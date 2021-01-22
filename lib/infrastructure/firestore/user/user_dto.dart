import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/domain/auth/value_objects/email_address.dart';
import 'package:ecommerce_app/domain/auth/value_objects/password.dart';
import 'package:ecommerce_app/domain/auth/value_objects/phone_no.dart';
import 'package:ecommerce_app/domain/auth/value_objects/uniqueID.dart';
import 'package:ecommerce_app/domain/auth/value_objects/username.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';


@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(ignore: true) String uID,
    @required String email,
    @required String password,
    @required String username,
    @required String phoneNo,
    @required String gender,
  }) = _UserDTO;

  factory UserDTO.fromDomain(OOGLOOUser user) {
    return UserDTO(
      uID: user.uID.value.getOrElse(null),
      email: user.emailAddress.value.getOrElse(null),
      username: user.username.value.getOrElse(null),
      password: user.password.value.getOrElse(null),
      phoneNo: user.phoneNumber.value.getOrElse(null),
      gender: user.gender,
    );
  }
  OOGLOOUser toDomain() {
    return OOGLOOUser(
      password: Password(password),
      username: Username(username),
      uID: UniqueID.fromUniqueString(uID),
      phoneNumber: PhoneNumber(phoneNo),
      emailAddress: EmailAddress(email), gender: gender,
    );
  }
  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromFirestore(DocumentSnapshot doc) {
    return UserDTO.fromJson(doc.data()).copyWith(uID: doc.id);
  }
}

