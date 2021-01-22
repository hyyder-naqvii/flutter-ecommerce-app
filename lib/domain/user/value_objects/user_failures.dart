import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failures.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure{
  const factory UserFailure.unexpected() = _Unexpected;
  const factory UserFailure.permissionDenied() = _PermissionDenied;
  const factory UserFailure.updateError() = _UpdateError;
}
