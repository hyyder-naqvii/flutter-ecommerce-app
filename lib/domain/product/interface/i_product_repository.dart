import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_failure.dart';
import 'package:moor/moor.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, List<FSProduct>>> watchAllProducts();

  Future<Either<ProductFailure, List<FSProduct>>> getAllProducts();

  Future<Either<ProductFailure, List<FSProduct>>> getWithCategory(
      String category);
  Future<Either<ProductFailure, FSProduct>> getWithProductID(
      String productID);

// Future<Either<ProductFailure,List<FSProduct>>> getAny(String query);
  Future<Either<ProductFailure, Unit>> insertNewProduct(FSProduct product,Uint8List productImage);

  Future<Either<ProductFailure, Unit>> updateProduct(FSProduct product,Uint8List productImage);

  Future<Either<ProductFailure, Unit>> deleteProduct(FSProduct product);

  Future<Either<ProductFailure, String>> updateProductImage(String uID,Uint8List image);

}
