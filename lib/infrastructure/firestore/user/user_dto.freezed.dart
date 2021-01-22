// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

// ignore: unused_element
  _UserDTO call(
      {@JsonKey(ignore: true) String uID,
      @required String email,
      @required String password,
      @required String username,
      @required String phoneNo}) {
    return _UserDTO(
      uID: uID,
      email: email,
      password: password,
      username: username,
      phoneNo: phoneNo,
    );
  }

// ignore: unused_element
  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @JsonKey(ignore: true)
  String get uID;
  String get email;
  String get password;
  String get username;
  String get phoneNo;

  Map<String, dynamic> toJson();
  $UserDTOCopyWith<UserDTO> get copyWith;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String uID,
      String email,
      String password,
      String username,
      String phoneNo});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object uID = freezed,
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
    Object phoneNo = freezed,
  }) {
    return _then(_value.copyWith(
      uID: uID == freezed ? _value.uID : uID as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
      phoneNo: phoneNo == freezed ? _value.phoneNo : phoneNo as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String uID,
      String email,
      String password,
      String username,
      String phoneNo});
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object uID = freezed,
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
    Object phoneNo = freezed,
  }) {
    return _then(_UserDTO(
      uID: uID == freezed ? _value.uID : uID as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
      phoneNo: phoneNo == freezed ? _value.phoneNo : phoneNo as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@JsonKey(ignore: true) this.uID,
      @required this.email,
      @required this.password,
      @required this.username,
      @required this.phoneNo})
      : assert(email != null),
        assert(password != null),
        assert(username != null),
        assert(phoneNo != null),
        super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String uID;
  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final String phoneNo;

  @override
  String toString() {
    return 'UserDTO(uID: $uID, email: $email, password: $password, username: $username, phoneNo: $phoneNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.uID, uID) ||
                const DeepCollectionEquality().equals(other.uID, uID)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.phoneNo, phoneNo) ||
                const DeepCollectionEquality().equals(other.phoneNo, phoneNo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uID) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(phoneNo);

  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const _UserDTO._() : super._();
  const factory _UserDTO(
      {@JsonKey(ignore: true) String uID,
      @required String email,
      @required String password,
      @required String username,
      @required String phoneNo}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get uID;
  @override
  String get email;
  @override
  String get password;
  @override
  String get username;
  @override
  String get phoneNo;
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith;
}
