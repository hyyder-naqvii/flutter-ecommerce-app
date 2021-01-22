import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // Authentication Value Failures
  const factory ValueFailure.invalidUsername({
    @required T failedValue,
  }) = InvalidUsername<T>;

  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidPhoneNumber({
    @required T failedValue,
  }) = InvalidPhoneNumber<T>;

  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;

// Product  Value Failures
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiLine({
    @required T failedValue,
  }) = MultiLine<T>;

  const factory ValueFailure.exceedsLength({
    @required T failedValue,
    @required int max,
  }) = ExceedsLength<T>;

  const factory ValueFailure.productPriceZero({
    @required T failedValue,
  }) = ProductPriceZero<T>;

  const factory ValueFailure.productPriceTooLarge({
    @required T failedValue,
    @required int max,
  }) = ProductPriceTooLarge<T>;

  const factory ValueFailure.notANumber({
    @required T failedValue,
  }) = NotANumber<T>;

  const factory ValueFailure.imageEmpty({
    @required T failedValue,
  }) = ImageEmpty<T>;
}
