

import 'dart:typed_data';

import 'package:ecommerce_app/domain/auth/value_objects/uniqueID.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_description.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_image.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_name.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_price.dart';
import 'package:ecommerce_app/hardcoded/product_categories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fs_product.freezed.dart';

@freezed
abstract class FSProduct implements _$FSProduct {
  const FSProduct._();

  // ignore: sort_unnamed_constructors_first
  const factory FSProduct({
    @required UniqueID uID,
    @required ProductName productName,
    @required ProductDescription productDescription,
    @required ProductPrice productPrice,
    @required String productImageURL,
    @required String category
  }) = _FSProduct;

  factory FSProduct.emptyProduct() => FSProduct(
        uID: UniqueID(),
        productName: ProductName(''),
        productDescription: ProductDescription(''),
        productPrice: ProductPrice('0'),
        category: productCategories[0].categoryName,
        productImageURL: '',
      );


  bool get isValid {
    return productName.isValid() && productDescription.isValid() && productPrice.isValid();
  }
}
