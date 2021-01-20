import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/failures.dart';
import 'package:ecommerce_app/domain/core/value_validators.dart';
import 'package:ecommerce_app/domain/core/valueobject.dart';

class ProductDescription extends ValueObject{
  @override
  final Either<ValueFailure<String>, String> value;


  static const maxLength = 500;

  factory ProductDescription(String input) {
    assert(input != null);

    return ProductDescription._(
      exceedsLength(input, maxLength).flatMap(empty),
    );
  }

  const ProductDescription._(this.value);

}
