import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/interface/i_product_repository.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_failure.dart';
import 'package:ecommerce_app/infrastructure/core/firestore_helpers.dart';
import 'package:ecommerce_app/infrastructure/firestore/product/product_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final FirebaseFirestore _firebaseFirestore;

  ProductRepository(this._firebaseFirestore);

  @override
  Future<Either<ProductFailure, List<FSProduct>>> getAllProducts() async {
    //Get The document snapshot
    try {
      final snapShot =
          await _firebaseFirestore.userDocument().productCollection.get();
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
  Stream<Either<ProductFailure, List<FSProduct>>> watchAllProducts() async* {
    //Get The document snapshot

      final productCollection = _firebaseFirestore.userDocument().productCollection;
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
      FSProduct product) async {
    try {
      final productCollection =
          _firebaseFirestore.userDocument().productCollection;
      final productDTO = FSProductDTO.fromDomain(product);

      print(productDTO.id);
      await productCollection.doc(productDTO.id).set(productDTO.toJson());
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
  Future<Either<ProductFailure, Unit>> updateProduct(FSProduct product) async {
    print("Update Called");
    try {
      final productCollection =
          _firebaseFirestore.userDocument().productCollection;
      final productDTO = FSProductDTO.fromDomain(product);
      await productCollection.doc(product.uID.value.getOrElse(null)).update(productDTO.toJson());

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
  Future<Either<ProductFailure, Unit>> deleteProduct(FSProduct product) async {
    try {
      final productCollection =
          _firebaseFirestore.userDocument().productCollection;
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
          await _firebaseFirestore.userDocument().productCollection.where('productCategory',isEqualTo: category).get();
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
    try {
      final snapShot =
          await _firebaseFirestore.userDocument().productCollection.doc(productID).get();
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
}
