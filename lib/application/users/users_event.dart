part of 'users_bloc.dart';

@freezed
abstract class UsersEvent with _$UsersEvent {

  const factory UsersEvent.getCurrentUser(OOGLOOUser oUser) = GetCurrentUser;
  const factory UsersEvent.updateCurrentUserProfilePic(OUser oUser, {@required bool removeInstead}) = UpdateCurrentUserProfilePic;

}
