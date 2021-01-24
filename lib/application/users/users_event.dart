part of 'users_bloc.dart';

@freezed
abstract class UsersEvent with _$UsersEvent {
  const factory UsersEvent.getCurrentUser() = GetCurrentUser;
  const factory UsersEvent.watchCurrentUser() = WatchCurrentUser;
  const factory UsersEvent.userReceived(Either<UserFailure, OOGLOOUser> userFailureOrSuccess) = UserRecieved;

}
