import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/failures.dart';
import 'package:ecommerce_app/domain/core/value_validators.dart';
import 'package:ecommerce_app/domain/core/valueobject.dart';

class ProductImage extends ValueObject{
  @override
  final Either<ValueFailure<Uint8List>, Uint8List> value;



  factory ProductImage(Uint8List input) {
    return ProductImage._(
     right(input),
    );
  }

  const ProductImage._(this.value);

}
