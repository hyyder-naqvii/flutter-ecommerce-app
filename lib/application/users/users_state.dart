part of 'users_bloc.dart';

@freezed
abstract class UsersState with _$UsersState{

  const factory UsersState({
    OOGLOOUser user,
  }) = _UsersState;

   factory UsersState.initial() => const UsersState();

}
