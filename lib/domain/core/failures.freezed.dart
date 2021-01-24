// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidUsername<T> invalidUsername<T>({@required T failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPhoneNumber<T> invalidPhoneNumber<T>({@required T failedValue}) {
    return InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  MultiLine<T> multiLine<T>({@required T failedValue}) {
    return MultiLine<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ExceedsLength<T> exceedsLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedsLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  ProductPriceZero<T> productPriceZero<T>({@required T failedValue}) {
    return ProductPriceZero<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ProductPriceTooLarge<T> productPriceTooLarge<T>(
      {@required T failedValue, @required int max}) {
    return ProductPriceTooLarge<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  NotANumber<T> notANumber<T>({@required T failedValue}) {
    return NotANumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ImageEmpty<T> imageEmpty<T>({@required T failedValue}) {
    return ImageEmpty<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidUsername<T>
    with DiagnosticableTreeMixin
    implements InvalidUsername<T> {
  const _$InvalidUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidUsername'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername({@required T failedValue}) =
      _$InvalidUsername<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPhoneNumberCopyWith(InvalidPhoneNumber<T> value,
          $Res Function(InvalidPhoneNumber<T>) then) =
      _$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNumberCopyWith<T, $Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber<T> _value, $Res Function(InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber<T>));

  @override
  InvalidPhoneNumber<T> get _value => super._value as InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPhoneNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidPhoneNumber<T>
    with DiagnosticableTreeMixin
    implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPhoneNumber'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhoneNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      _$InvalidPhoneNumberCopyWithImpl<T, InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory InvalidPhoneNumber({@required T failedValue}) =
      _$InvalidPhoneNumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $MultiLineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultiLineCopyWith(
          MultiLine<T> value, $Res Function(MultiLine<T>) then) =
      _$MultiLineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MultiLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultiLineCopyWith<T, $Res> {
  _$MultiLineCopyWithImpl(
      MultiLine<T> _value, $Res Function(MultiLine<T>) _then)
      : super(_value, (v) => _then(v as MultiLine<T>));

  @override
  MultiLine<T> get _value => super._value as MultiLine<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(MultiLine<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$MultiLine<T> with DiagnosticableTreeMixin implements MultiLine<T> {
  const _$MultiLine({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.multiLine'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MultiLine<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      _$MultiLineCopyWithImpl<T, MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class MultiLine<T> implements ValueFailure<T> {
  const factory MultiLine({@required T failedValue}) = _$MultiLine<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith;
}

/// @nodoc
abstract class $ExceedsLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedsLengthCopyWith(
          ExceedsLength<T> value, $Res Function(ExceedsLength<T>) then) =
      _$ExceedsLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedsLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedsLengthCopyWith<T, $Res> {
  _$ExceedsLengthCopyWithImpl(
      ExceedsLength<T> _value, $Res Function(ExceedsLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedsLength<T>));

  @override
  ExceedsLength<T> get _value => super._value as ExceedsLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedsLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedsLength<T>
    with DiagnosticableTreeMixin
    implements ExceedsLength<T> {
  const _$ExceedsLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedsLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedsLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedsLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedsLengthCopyWith<T, ExceedsLength<T>> get copyWith =>
      _$ExceedsLengthCopyWithImpl<T, ExceedsLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return exceedsLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedsLength != null) {
      return exceedsLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return exceedsLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedsLength != null) {
      return exceedsLength(this);
    }
    return orElse();
  }
}

abstract class ExceedsLength<T> implements ValueFailure<T> {
  const factory ExceedsLength({@required T failedValue, @required int max}) =
      _$ExceedsLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  $ExceedsLengthCopyWith<T, ExceedsLength<T>> get copyWith;
}

/// @nodoc
abstract class $ProductPriceZeroCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ProductPriceZeroCopyWith(
          ProductPriceZero<T> value, $Res Function(ProductPriceZero<T>) then) =
      _$ProductPriceZeroCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ProductPriceZeroCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ProductPriceZeroCopyWith<T, $Res> {
  _$ProductPriceZeroCopyWithImpl(
      ProductPriceZero<T> _value, $Res Function(ProductPriceZero<T>) _then)
      : super(_value, (v) => _then(v as ProductPriceZero<T>));

  @override
  ProductPriceZero<T> get _value => super._value as ProductPriceZero<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ProductPriceZero<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ProductPriceZero<T>
    with DiagnosticableTreeMixin
    implements ProductPriceZero<T> {
  const _$ProductPriceZero({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.productPriceZero(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.productPriceZero'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductPriceZero<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ProductPriceZeroCopyWith<T, ProductPriceZero<T>> get copyWith =>
      _$ProductPriceZeroCopyWithImpl<T, ProductPriceZero<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return productPriceZero(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productPriceZero != null) {
      return productPriceZero(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return productPriceZero(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productPriceZero != null) {
      return productPriceZero(this);
    }
    return orElse();
  }
}

abstract class ProductPriceZero<T> implements ValueFailure<T> {
  const factory ProductPriceZero({@required T failedValue}) =
      _$ProductPriceZero<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ProductPriceZeroCopyWith<T, ProductPriceZero<T>> get copyWith;
}

/// @nodoc
abstract class $ProductPriceTooLargeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ProductPriceTooLargeCopyWith(ProductPriceTooLarge<T> value,
          $Res Function(ProductPriceTooLarge<T>) then) =
      _$ProductPriceTooLargeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ProductPriceTooLargeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ProductPriceTooLargeCopyWith<T, $Res> {
  _$ProductPriceTooLargeCopyWithImpl(ProductPriceTooLarge<T> _value,
      $Res Function(ProductPriceTooLarge<T>) _then)
      : super(_value, (v) => _then(v as ProductPriceTooLarge<T>));

  @override
  ProductPriceTooLarge<T> get _value => super._value as ProductPriceTooLarge<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ProductPriceTooLarge<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ProductPriceTooLarge<T>
    with DiagnosticableTreeMixin
    implements ProductPriceTooLarge<T> {
  const _$ProductPriceTooLarge({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.productPriceTooLarge(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ValueFailure<$T>.productPriceTooLarge'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductPriceTooLarge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ProductPriceTooLargeCopyWith<T, ProductPriceTooLarge<T>> get copyWith =>
      _$ProductPriceTooLargeCopyWithImpl<T, ProductPriceTooLarge<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return productPriceTooLarge(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productPriceTooLarge != null) {
      return productPriceTooLarge(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return productPriceTooLarge(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productPriceTooLarge != null) {
      return productPriceTooLarge(this);
    }
    return orElse();
  }
}

abstract class ProductPriceTooLarge<T> implements ValueFailure<T> {
  const factory ProductPriceTooLarge(
      {@required T failedValue, @required int max}) = _$ProductPriceTooLarge<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  $ProductPriceTooLargeCopyWith<T, ProductPriceTooLarge<T>> get copyWith;
}

/// @nodoc
abstract class $NotANumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NotANumberCopyWith(
          NotANumber<T> value, $Res Function(NotANumber<T>) then) =
      _$NotANumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$NotANumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotANumberCopyWith<T, $Res> {
  _$NotANumberCopyWithImpl(
      NotANumber<T> _value, $Res Function(NotANumber<T>) _then)
      : super(_value, (v) => _then(v as NotANumber<T>));

  @override
  NotANumber<T> get _value => super._value as NotANumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NotANumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$NotANumber<T> with DiagnosticableTreeMixin implements NotANumber<T> {
  const _$NotANumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.notANumber(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.notANumber'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotANumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $NotANumberCopyWith<T, NotANumber<T>> get copyWith =>
      _$NotANumberCopyWithImpl<T, NotANumber<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return notANumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notANumber != null) {
      return notANumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return notANumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notANumber != null) {
      return notANumber(this);
    }
    return orElse();
  }
}

abstract class NotANumber<T> implements ValueFailure<T> {
  const factory NotANumber({@required T failedValue}) = _$NotANumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $NotANumberCopyWith<T, NotANumber<T>> get copyWith;
}

/// @nodoc
abstract class $ImageEmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ImageEmptyCopyWith(
          ImageEmpty<T> value, $Res Function(ImageEmpty<T>) then) =
      _$ImageEmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ImageEmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ImageEmptyCopyWith<T, $Res> {
  _$ImageEmptyCopyWithImpl(
      ImageEmpty<T> _value, $Res Function(ImageEmpty<T>) _then)
      : super(_value, (v) => _then(v as ImageEmpty<T>));

  @override
  ImageEmpty<T> get _value => super._value as ImageEmpty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ImageEmpty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ImageEmpty<T> with DiagnosticableTreeMixin implements ImageEmpty<T> {
  const _$ImageEmpty({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.imageEmpty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.imageEmpty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageEmpty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ImageEmptyCopyWith<T, ImageEmpty<T>> get copyWith =>
      _$ImageEmptyCopyWithImpl<T, ImageEmpty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidUsername(T failedValue),
    @required TResult invalidEmail(T failedValue),
    @required TResult invalidPhoneNumber(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult empty(T failedValue),
    @required TResult multiLine(T failedValue),
    @required TResult exceedsLength(T failedValue, int max),
    @required TResult productPriceZero(T failedValue),
    @required TResult productPriceTooLarge(T failedValue, int max),
    @required TResult notANumber(T failedValue),
    @required TResult imageEmpty(T failedValue),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return imageEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidUsername(T failedValue),
    TResult invalidEmail(T failedValue),
    TResult invalidPhoneNumber(T failedValue),
    TResult shortPassword(T failedValue),
    TResult empty(T failedValue),
    TResult multiLine(T failedValue),
    TResult exceedsLength(T failedValue, int max),
    TResult productPriceZero(T failedValue),
    TResult productPriceTooLarge(T failedValue, int max),
    TResult notANumber(T failedValue),
    TResult imageEmpty(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageEmpty != null) {
      return imageEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidUsername(InvalidUsername<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiLine(MultiLine<T> value),
    @required TResult exceedsLength(ExceedsLength<T> value),
    @required TResult productPriceZero(ProductPriceZero<T> value),
    @required TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    @required TResult notANumber(NotANumber<T> value),
    @required TResult imageEmpty(ImageEmpty<T> value),
  }) {
    assert(invalidUsername != null);
    assert(invalidEmail != null);
    assert(invalidPhoneNumber != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(multiLine != null);
    assert(exceedsLength != null);
    assert(productPriceZero != null);
    assert(productPriceTooLarge != null);
    assert(notANumber != null);
    assert(imageEmpty != null);
    return imageEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidUsername(InvalidUsername<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult empty(Empty<T> value),
    TResult multiLine(MultiLine<T> value),
    TResult exceedsLength(ExceedsLength<T> value),
    TResult productPriceZero(ProductPriceZero<T> value),
    TResult productPriceTooLarge(ProductPriceTooLarge<T> value),
    TResult notANumber(NotANumber<T> value),
    TResult imageEmpty(ImageEmpty<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageEmpty != null) {
      return imageEmpty(this);
    }
    return orElse();
  }
}

abstract class ImageEmpty<T> implements ValueFailure<T> {
  const factory ImageEmpty({@required T failedValue}) = _$ImageEmpty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ImageEmptyCopyWith<T, ImageEmpty<T>> get copyWith;
}
