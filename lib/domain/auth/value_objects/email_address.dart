import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/failures.dart';
import 'package:ecommerce_app/domain/core/value_validators.dart';
import 'package:ecommerce_app/domain/core/valueobject.dart';
import 'package:flutter/foundation.dart';



@immutable
class EmailAddress extends ValueObject{
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

}
