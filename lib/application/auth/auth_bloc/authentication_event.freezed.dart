// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

// ignore: unused_element
  ResetState resetState() {
    return const ResetState();
  }

// ignore: unused_element
  UsernameChanged usernameChanged(String username) {
    return UsernameChanged(
      username,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passWordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  GenderChanged genderChanged(String gender) {
    return GenderChanged(
      gender,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }

// ignore: unused_element
  ProfileInformationUpdated profileInformationUpdated() {
    return const ProfileInformationUpdated();
  }

// ignore: unused_element
  SignInButtonPressed signInButtonPressed() {
    return const SignInButtonPressed();
  }

// ignore: unused_element
  RegisterButtonPressed registerButtonPressed() {
    return const RegisterButtonPressed();
  }

// ignore: unused_element
  GoogleSignInPressed googleSignInPressed() {
    return const GoogleSignInPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $ResetStateCopyWith<$Res> {
  factory $ResetStateCopyWith(
          ResetState value, $Res Function(ResetState) then) =
      _$ResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetStateCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ResetStateCopyWith<$Res> {
  _$ResetStateCopyWithImpl(ResetState _value, $Res Function(ResetState) _then)
      : super(_value, (v) => _then(v as ResetState));

  @override
  ResetState get _value => super._value as ResetState;
}

/// @nodoc
class _$ResetState implements ResetState {
  const _$ResetState();

  @override
  String toString() {
    return 'AuthenticationEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class ResetState implements AuthenticationEvent {
  const factory ResetState() = _$ResetState;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(UsernameChanged(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'AuthenticationEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements AuthenticationEvent {
  const factory UsernameChanged(String username) = _$UsernameChanged;

  String get username;
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthenticationEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.passWordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return passWordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passWordChanged != null) {
      return passWordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return passWordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passWordChanged != null) {
      return passWordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthenticationEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $GenderChangedCopyWith<$Res> {
  factory $GenderChangedCopyWith(
          GenderChanged value, $Res Function(GenderChanged) then) =
      _$GenderChangedCopyWithImpl<$Res>;
  $Res call({String gender});
}

/// @nodoc
class _$GenderChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $GenderChangedCopyWith<$Res> {
  _$GenderChangedCopyWithImpl(
      GenderChanged _value, $Res Function(GenderChanged) _then)
      : super(_value, (v) => _then(v as GenderChanged));

  @override
  GenderChanged get _value => super._value as GenderChanged;

  @override
  $Res call({
    Object gender = freezed,
  }) {
    return _then(GenderChanged(
      gender == freezed ? _value.gender : gender as String,
    ));
  }
}

/// @nodoc
class _$GenderChanged implements GenderChanged {
  const _$GenderChanged(this.gender) : assert(gender != null);

  @override
  final String gender;

  @override
  String toString() {
    return 'AuthenticationEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GenderChanged &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gender);

  @override
  $GenderChangedCopyWith<GenderChanged> get copyWith =>
      _$GenderChangedCopyWithImpl<GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class GenderChanged implements AuthenticationEvent {
  const factory GenderChanged(String gender) = _$GenderChanged;

  String get gender;
  $GenderChangedCopyWith<GenderChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthenticationEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements AuthenticationEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $ProfileInformationUpdatedCopyWith<$Res> {
  factory $ProfileInformationUpdatedCopyWith(ProfileInformationUpdated value,
          $Res Function(ProfileInformationUpdated) then) =
      _$ProfileInformationUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileInformationUpdatedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $ProfileInformationUpdatedCopyWith<$Res> {
  _$ProfileInformationUpdatedCopyWithImpl(ProfileInformationUpdated _value,
      $Res Function(ProfileInformationUpdated) _then)
      : super(_value, (v) => _then(v as ProfileInformationUpdated));

  @override
  ProfileInformationUpdated get _value =>
      super._value as ProfileInformationUpdated;
}

/// @nodoc
class _$ProfileInformationUpdated implements ProfileInformationUpdated {
  const _$ProfileInformationUpdated();

  @override
  String toString() {
    return 'AuthenticationEvent.profileInformationUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileInformationUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return profileInformationUpdated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileInformationUpdated != null) {
      return profileInformationUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return profileInformationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileInformationUpdated != null) {
      return profileInformationUpdated(this);
    }
    return orElse();
  }
}

abstract class ProfileInformationUpdated implements AuthenticationEvent {
  const factory ProfileInformationUpdated() = _$ProfileInformationUpdated;
}

/// @nodoc
abstract class $SignInButtonPressedCopyWith<$Res> {
  factory $SignInButtonPressedCopyWith(
          SignInButtonPressed value, $Res Function(SignInButtonPressed) then) =
      _$SignInButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInButtonPressedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignInButtonPressedCopyWith<$Res> {
  _$SignInButtonPressedCopyWithImpl(
      SignInButtonPressed _value, $Res Function(SignInButtonPressed) _then)
      : super(_value, (v) => _then(v as SignInButtonPressed));

  @override
  SignInButtonPressed get _value => super._value as SignInButtonPressed;
}

/// @nodoc
class _$SignInButtonPressed implements SignInButtonPressed {
  const _$SignInButtonPressed();

  @override
  String toString() {
    return 'AuthenticationEvent.signInButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return signInButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInButtonPressed != null) {
      return signInButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return signInButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInButtonPressed != null) {
      return signInButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SignInButtonPressed implements AuthenticationEvent {
  const factory SignInButtonPressed() = _$SignInButtonPressed;
}

/// @nodoc
abstract class $RegisterButtonPressedCopyWith<$Res> {
  factory $RegisterButtonPressedCopyWith(RegisterButtonPressed value,
          $Res Function(RegisterButtonPressed) then) =
      _$RegisterButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterButtonPressedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $RegisterButtonPressedCopyWith<$Res> {
  _$RegisterButtonPressedCopyWithImpl(
      RegisterButtonPressed _value, $Res Function(RegisterButtonPressed) _then)
      : super(_value, (v) => _then(v as RegisterButtonPressed));

  @override
  RegisterButtonPressed get _value => super._value as RegisterButtonPressed;
}

/// @nodoc
class _$RegisterButtonPressed implements RegisterButtonPressed {
  const _$RegisterButtonPressed();

  @override
  String toString() {
    return 'AuthenticationEvent.registerButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return registerButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerButtonPressed != null) {
      return registerButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return registerButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerButtonPressed != null) {
      return registerButtonPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterButtonPressed implements AuthenticationEvent {
  const factory RegisterButtonPressed() = _$RegisterButtonPressed;
}

/// @nodoc
abstract class $GoogleSignInPressedCopyWith<$Res> {
  factory $GoogleSignInPressedCopyWith(
          GoogleSignInPressed value, $Res Function(GoogleSignInPressed) then) =
      _$GoogleSignInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleSignInPressedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $GoogleSignInPressedCopyWith<$Res> {
  _$GoogleSignInPressedCopyWithImpl(
      GoogleSignInPressed _value, $Res Function(GoogleSignInPressed) _then)
      : super(_value, (v) => _then(v as GoogleSignInPressed));

  @override
  GoogleSignInPressed get _value => super._value as GoogleSignInPressed;
}

/// @nodoc
class _$GoogleSignInPressed implements GoogleSignInPressed {
  const _$GoogleSignInPressed();

  @override
  String toString() {
    return 'AuthenticationEvent.googleSignInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoogleSignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult resetState(),
    @required TResult usernameChanged(String username),
    @required TResult emailChanged(String email),
    @required TResult passWordChanged(String password),
    @required TResult genderChanged(String gender),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult profileInformationUpdated(),
    @required TResult signInButtonPressed(),
    @required TResult registerButtonPressed(),
    @required TResult googleSignInPressed(),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return googleSignInPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult resetState(),
    TResult usernameChanged(String username),
    TResult emailChanged(String email),
    TResult passWordChanged(String password),
    TResult genderChanged(String gender),
    TResult phoneNumberChanged(String phoneNumber),
    TResult profileInformationUpdated(),
    TResult signInButtonPressed(),
    TResult registerButtonPressed(),
    TResult googleSignInPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (googleSignInPressed != null) {
      return googleSignInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult resetState(ResetState value),
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passWordChanged(PasswordChanged value),
    @required TResult genderChanged(GenderChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required
        TResult profileInformationUpdated(ProfileInformationUpdated value),
    @required TResult signInButtonPressed(SignInButtonPressed value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult googleSignInPressed(GoogleSignInPressed value),
  }) {
    assert(resetState != null);
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(passWordChanged != null);
    assert(genderChanged != null);
    assert(phoneNumberChanged != null);
    assert(profileInformationUpdated != null);
    assert(signInButtonPressed != null);
    assert(registerButtonPressed != null);
    assert(googleSignInPressed != null);
    return googleSignInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult resetState(ResetState value),
    TResult usernameChanged(UsernameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passWordChanged(PasswordChanged value),
    TResult genderChanged(GenderChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult profileInformationUpdated(ProfileInformationUpdated value),
    TResult signInButtonPressed(SignInButtonPressed value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    TResult googleSignInPressed(GoogleSignInPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (googleSignInPressed != null) {
      return googleSignInPressed(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInPressed implements AuthenticationEvent {
  const factory GoogleSignInPressed() = _$GoogleSignInPressed;
}
