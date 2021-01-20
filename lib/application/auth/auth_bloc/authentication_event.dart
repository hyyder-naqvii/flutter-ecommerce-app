import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.freezed.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.resetState() = ResetState;
  const factory AuthenticationEvent.usernameChanged(String username) =
      UsernameChanged;
  const factory AuthenticationEvent.emailChanged(String email) = EmailChanged;
  const factory AuthenticationEvent.passWordChanged(String password) =
      PasswordChanged;
  const factory AuthenticationEvent.genderChanged(String gender) =
  GenderChanged;
  const factory AuthenticationEvent.phoneNumberChanged(String phoneNumber) =
  PhoneNumberChanged;
  const factory AuthenticationEvent.profileInformationUpdated() =
  ProfileInformationUpdated;
  const factory AuthenticationEvent.signInButtonPressed() = SignInButtonPressed;
  const factory AuthenticationEvent.registerButtonPressed() =
      RegisterButtonPressed;
  const factory AuthenticationEvent.googleSignInPressed() = GoogleSignInPressed;


}
