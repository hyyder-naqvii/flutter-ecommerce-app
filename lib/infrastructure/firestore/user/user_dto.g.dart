// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    email: json['email'] as String,
    password: json['password'] as String,
    username: json['username'] as String,
    phoneNo: json['phoneNo'] as String,
    gender: json['gender'] as String,
    profilePicUrl: json['profilePicUrl'] as String,
  );
}

Map<String, dynamic> _$_$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
      'phoneNo': instance.phoneNo,
      'gender': instance.gender,
      'profilePicUrl': instance.profilePicUrl,
    };
