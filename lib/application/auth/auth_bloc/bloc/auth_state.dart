part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required bool isAuthenticated,
    @required bool isAdmin,
  }) = _AuthState;
  factory AuthState.initial() => const AuthState(
        isAuthenticated: false,
        isAdmin: false,
      );
}
