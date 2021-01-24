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
  _User call(
      {@required UniqueID uID,
      @required EmailAddress emailAddress,
      @required Password password,
      @required Username username,
      @required PhoneNumber phoneNumber,
      @required String gender,
      @required String profilePicUrl}) {
    return _User(
      uID: uID,
      emailAddress: emailAddress,
      password: password,
      username: username,
      phoneNumber: phoneNumber,
      gender: gender,
      profilePicUrl: profilePicUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OOGLOOUser = _$OOGLOOUserTearOff();

/// @nodoc
mixin _$OOGLOOUser {
  UniqueID get uID;
  EmailAddress get emailAddress;
  Password get password;
  Username get username;
  PhoneNumber get phoneNumber;
  String get gender;
  String get profilePicUrl;

  @JsonKey(ignore: true)
  $OOGLOOUserCopyWith<OOGLOOUser> get copyWith;
}

/// @nodoc
abstract class $OOGLOOUserCopyWith<$Res> {
  factory $OOGLOOUserCopyWith(
          OOGLOOUser value, $Res Function(OOGLOOUser) then) =
      _$OOGLOOUserCopyWithImpl<$Res>;
  $Res call(
      {UniqueID uID,
      EmailAddress emailAddress,
      Password password,
      Username username,
      PhoneNumber phoneNumber,
      String gender,
      String profilePicUrl});
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
    Object password = freezed,
    Object username = freezed,
    Object phoneNumber = freezed,
    Object gender = freezed,
    Object profilePicUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uID: uID == freezed ? _value.uID : uID as UniqueID,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      gender: gender == freezed ? _value.gender : gender as String,
      profilePicUrl: profilePicUrl == freezed
          ? _value.profilePicUrl
          : profilePicUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $OOGLOOUserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueID uID,
      EmailAddress emailAddress,
      Password password,
      Username username,
      PhoneNumber phoneNumber,
      String gender,
      String profilePicUrl});
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
    Object password = freezed,
    Object username = freezed,
    Object phoneNumber = freezed,
    Object gender = freezed,
    Object profilePicUrl = freezed,
  }) {
    return _then(_User(
      uID: uID == freezed ? _value.uID : uID as UniqueID,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      username: username == freezed ? _value.username : username as Username,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      gender: gender == freezed ? _value.gender : gender as String,
      profilePicUrl: profilePicUrl == freezed
          ? _value.profilePicUrl
          : profilePicUrl as String,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@required this.uID,
      @required this.emailAddress,
      @required this.password,
      @required this.username,
      @required this.phoneNumber,
      @required this.gender,
      @required this.profilePicUrl})
      : assert(uID != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(username != null),
        assert(phoneNumber != null),
        assert(gender != null),
        assert(profilePicUrl != null);

  @override
  final UniqueID uID;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Username username;
  @override
  final PhoneNumber phoneNumber;
  @override
  final String gender;
  @override
  final String profilePicUrl;

  @override
  String toString() {
    return 'OOGLOOUser(uID: $uID, emailAddress: $emailAddress, password: $password, username: $username, phoneNumber: $phoneNumber, gender: $gender, profilePicUrl: $profilePicUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.uID, uID) ||
                const DeepCollectionEquality().equals(other.uID, uID)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicUrl, profilePicUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uID) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(profilePicUrl);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements OOGLOOUser {
  const factory _User(
      {@required UniqueID uID,
      @required EmailAddress emailAddress,
      @required Password password,
      @required Username username,
      @required PhoneNumber phoneNumber,
      @required String gender,
      @required String profilePicUrl}) = _$_User;

  @override
  UniqueID get uID;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Username get username;
  @override
  PhoneNumber get phoneNumber;
  @override
  String get gender;
  @override
  String get profilePicUrl;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
