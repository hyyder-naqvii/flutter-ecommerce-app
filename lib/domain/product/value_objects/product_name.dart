import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/failures.dart';
import 'package:ecommerce_app/domain/core/value_validators.dart';
import 'package:ecommerce_app/domain/core/valueobject.dart';

class ProductName extends ValueObject{
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 25;

  factory ProductName(String input) {
    assert(input != null);

    // if [exceedsLength] returns right then we check for empty string else we return an exceedsLength failure
    return ProductName._(
      exceedsLength(input, maxLength).flatMap(empty).flatMap(multiLine),
    );
  }

  const ProductName._(this.value);

}
