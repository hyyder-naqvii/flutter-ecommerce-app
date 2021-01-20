import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/failures.dart';
import 'package:ecommerce_app/domain/core/value_validators.dart';
import 'package:ecommerce_app/domain/core/valueobject.dart';

class ProductPrice extends ValueObject{
  @override
  final Either<ValueFailure<String>, String> value;

  //maximum value allowed for integer 64-bit
  static const int maxPrice = 1000000;

  factory ProductPrice(String input) {
    assert(input != null);

    return ProductPrice._(
      notANumber(input).flatMap((a) => priceTooLarge(a, maxPrice)).flatMap(priceZero),

    );
  }

  const ProductPrice._(this.value);

}
