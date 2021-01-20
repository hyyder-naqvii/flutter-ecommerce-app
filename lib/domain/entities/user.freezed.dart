// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OOGLOOUserTearOff {
  const _$OOGLOOUserTearOff();

// ignore: unused_element
  _User call({@required UniqueID uID, @required String emailAddress}) {
    return _User(
      uID: uID,
      emailAddress: emailAddress,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OOGLOOUser = _$OOGLOOUserTearOff();

/// @nodoc
mixin _$OOGLOOUser {
  UniqueID get uID;
  String get emailAddress;

  $OOGLOOUserCopyWith<OOGLOOUser> get copyWith;
}

/// @nodoc
abstract class $OOGLOOUserCopyWith<$Res> {
  factory $OOGLOOUserCopyWith(
          OOGLOOUser value, $Res Function(OOGLOOUser) then) =
      _$OOGLOOUserCopyWithImpl<$Res>;
  $Res call({UniqueID uID, String emailAddress});
}

/// @nodoc
class _$OOGLOOUserCopyWithImpl<$Res> implements $OOGLOOUserCopyWith<$Res> {
  _$OOGLOOUserCopyWithImpl(this._value, this._then);

  final OOGLOOUser _value;
  // ignore: unused_field
  final $Res Function(OOGLOOUser) _then;

  @override
  $Res call({
    Object uID = freezed,
    Object emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      uID: uID == freezed ? _value.uID : uID as UniqueID,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $OOGLOOUserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueID uID, String emailAddress});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$OOGLOOUserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object uID = freezed,
    Object emailAddress = freezed,
  }) {
    return _then(_User(
      uID: uID == freezed ? _value.uID : uID as UniqueID,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  const _$_User({@required this.uID, @required this.emailAddress})
      : assert(uID != null),
        assert(emailAddress != null);

  @override
  final UniqueID uID;
  @override
  final String emailAddress;

  @override
  String toString() {
    return 'OOGLOOUser(uID: $uID, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.uID, uID) ||
                const DeepCollectionEquality().equals(other.uID, uID)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uID) ^
      const DeepCollectionEquality().hash(emailAddress);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements OOGLOOUser {
  const factory _User({@required UniqueID uID, @required String emailAddress}) =
      _$_User;

  @override
  UniqueID get uID;
  @override
  String get emailAddress;
  @override
  _$UserCopyWith<_User> get copyWith;
}
