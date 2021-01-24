part of 'user_image_bloc.dart';

@freezed
abstract class UserImageEvent with _$UserImageEvent {
  const factory UserImageEvent.getUserImage() = GetUserImage;
  const factory UserImageEvent.updateUserImage({@required bool removeInstead}) = UpdateUserImage;
}