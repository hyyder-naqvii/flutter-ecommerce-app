import 'package:ecommerce_app/domain/auth/value_objects/uniqueID.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user.freezed.dart';

@freezed
abstract class OOGLOOUser with _$OOGLOOUser {
  const factory OOGLOOUser({
    @required UniqueID uID,
    @required String emailAddress,

  }
      ) = _User;
}
