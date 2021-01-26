import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/interface/i_product_repository.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_failure.dart';
import 'package:ecommerce_app/infrastructure/core/firestore_helpers.dart';
import 'package:ecommerce_app/infrastructure/firestore/product/product_dto.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  ProductRepository(this._firebaseFirestore, this._firebaseStorage);

  @override
  Future<Either<ProductFailure, List<FSProduct>>> getAllProducts() async {
    //Get The document snapshot
    try {
      final snapShot =
          await _firebaseFirestore.adminDocument().productCollection.get();
      final List<FSProduct> products = snapShot.docs
          .map((doc) => FSProductDTO.fromFirestore(doc).toDomain())
          .toList();

      return right(products);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else {
        print(e.message);
        return left(const ProductFailure.unexpected());
      }
    }
  }
  @override
  Stream<Either<ProductFailure, List<FSProduct>>> watchAllProducts() async* {
    //Get The document snapshot

      final productCollection = _firebaseFirestore.adminDocument().productCollection;
      yield* productCollection.snapshots().map((snapshot) => right<ProductFailure,List<FSProduct>>(
        snapshot.docs.map((doc) => FSProductDTO.fromFirestore(doc).toDomain()).toList()
      )).onErrorReturnWith((e) {
        if( e is FirebaseException && e.message.contains('PERMISSION_DENIED')){
          return left(const ProductFailure.permissionDenied());
        }
        else{
    return left(const ProductFailure.unexpected());
    }
      });

  }

  @override
  Future<Either<ProductFailure, Unit>> insertNewProduct(
      FSProduct product,Uint8List image) async {
    try {
      final productCollection =
          _firebaseFirestore.adminDocument().productCollection;
      if(image != null){
        final productImageURLOption = await updateProductImage(product.uID.value.getOrElse(null),image);
        final productDTO = FSProductDTO.fromDomain(product.copyWith(
            productImageURL : productImageURLOption.fold((_) => '', (imageURL) => imageURL)
        ));
        await productCollection.doc(productDTO.id).set(productDTO.toJson());
      }
      else{
        final productDTO = FSProductDTO.fromDomain(product);
        await productCollection.doc(productDTO.id).set(productDTO.toJson());
      }

      print("New Product With Name : ${product.productName.value.getOrElse(null)} Added To FIrestore");
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else {
        print(e.message);
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> updateProduct(FSProduct product,Uint8List image) async {
    print("Update Called");
    try {
      final productCollection =
          _firebaseFirestore.adminDocument().productCollection;
      if(image != null){
        final productImageURLOption = await updateProductImage(product.uID.value.getOrElse(null),image);
        final productDTO = FSProductDTO.fromDomain(product.copyWith(
            productImageURL : productImageURLOption.fold((_) => '', (imageURL) => imageURL)
        ));
        await productCollection.doc(product.uID.value.getOrElse(null)).update(productDTO.toJson());
      }
     else{
        final productDTO = FSProductDTO.fromDomain(product);
        await productCollection.doc(product.uID.value.getOrElse(null)).update(productDTO.toJson());
      }



      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ProductFailure.updateError());
      } else {
        print(e.message);
        return left(const ProductFailure.unexpected());
      }
    }
  }



  @override
  Future<Either<ProductFailure, String>> updateProductImage(String uID, Uint8List image) async{
    final adminDataCollection =
        _firebaseFirestore.adminDocument().productCollection;

    try{
      final Reference productImageFolderRef = _firebaseStorage.ref().child('admin').child('products').child(uID).child('product_media').child('product_display_image');
      if(image != null){
        final String imageURL = await productImageFolderRef.putData(image).then((_image) => _image.ref.getDownloadURL());
        return right(imageURL);
      }
      else{
        return right('');
      }
    }
    on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ProductFailure.updateError());
      } else {
        print(e.message);
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> deleteProduct(FSProduct product) async {
    try {
      final productCollection =
          _firebaseFirestore.adminDocument().productCollection;
      final productID = product.uID.value.getOrElse(null);
      // ignore: unnecessary_statements
      productCollection.doc(productID).delete;

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ProductFailure.updateError());
      } else {
        print(e.message);
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProductFailure, List<FSProduct>>> getWithCategory(String category) async{
    //Get The document snapshot
    try {
      final snapShot =
          await _firebaseFirestore.adminDocument().productCollection.where('productCategory',isEqualTo: category).get();
      final List<FSProduct> products = snapShot.docs
          .map((doc) => FSProductDTO.fromFirestore(doc).toDomain())
          .toList();

      return right(products);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else {
        print(e.message);
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ProductFailure, FSProduct>> getWithProductID(String productID) async{
    if(productID.isEmpty){
      return left(const ProductFailure.unexpected());
    }
    try {
      final snapShot =
          await _firebaseFirestore.adminDocument().productCollection.doc(productID).get();
      final FSProduct product = FSProductDTO.fromFirestore(snapShot).toDomain();

      return right(product);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else {
        print(e.message);
        return left(const ProductFailure.unexpected());
      }
    }
  }

  @override
  Future<Uint8List> getImageData(String imageURL,String productID)async {
    final Reference productImageFolderRef = _firebaseStorage.ref().child('admin').child('products').child(productID).child('product_media').child('product_display_image');
    final Uint8List imageData = await productImageFolderRef.getData();
    return imageData;
  }
}
