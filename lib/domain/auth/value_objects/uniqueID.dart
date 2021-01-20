

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/core/failures.dart';
import 'package:ecommerce_app/domain/core/valueobject.dart';
import 'package:flutter/foundation.dart';

import 'package:uuid/uuid.dart';

@immutable
class UniqueID extends ValueObject {
  final Either<ValueFailure<String>, String> value;

  factory UniqueID() {
    return UniqueID._(right(Uuid().v1()));
  }

  factory UniqueID.fromUniqueString(String uniqueID) {
    assert(uniqueID != null);
    return UniqueID._(
      right(uniqueID),
    );
  }

  const UniqueID._(this.value);
}
