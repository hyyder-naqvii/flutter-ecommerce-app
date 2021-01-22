import 'package:ecommerce_app/domain/auth/value_objects/email_address.dart';
import 'package:ecommerce_app/domain/auth/value_objects/password.dart';
import 'package:ecommerce_app/domain/auth/value_objects/phone_no.dart';
import 'package:ecommerce_app/domain/auth/value_objects/uniqueID.dart';
import 'package:ecommerce_app/domain/auth/value_objects/username.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user.freezed.dart';

@freezed
abstract class OOGLOOUser with _$OOGLOOUser {
  const factory OOGLOOUser({
    @required UniqueID uID,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Username username,
    @required PhoneNumber phoneNumber,
  }
      ) = _User;
}
