import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/failures.dart';
import 'package:ecommerce_app/domain/core/value_validators.dart';
import 'package:ecommerce_app/domain/core/valueobject.dart';
import 'package:flutter/foundation.dart';



@immutable
class Password extends ValueObject{
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);

}

