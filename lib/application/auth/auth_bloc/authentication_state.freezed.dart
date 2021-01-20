// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

// ignore: unused_element
  _AuthenticationState call(
      {@required Username username,
      @required EmailAddress emailAddress,
      @required Password password,
      @required String gender,
      @required PhoneNumber phoneNumber,
      @required bool showErrorMessages,
      @required bool isValidating,
      @required bool isRegistered,
      @required bool updateSuccess,
      @required Option<Either<AuthFailure, Unit>> authStateOption}) {
    return _AuthenticationState(
      username: username,
      emailAddress: emailAddress,
      password: password,
      gender: gender,
      phoneNumber: phoneNumber,
      showErrorMessages: showErrorMessages,
      isValidating: isValidating,
      isRegistered: isRegistered,
      updateSuccess: updateSuccess,
      authStateOption: authStateOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  Username get username;
  EmailAddress get emailAddress;
  Password get password;
  String get gender;
  PhoneNumber get phoneNumber;
  bool get showErrorMessages;
  bool get isValidating;
  bool get isRegistered;
  bool get updateSuccess;
  Option<Either<AuthFailure, Unit>> get authStateOption;

  $AuthenticationStateCopyWith<AuthenticationState> get copyWith;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      Password password,
      String gender,
      PhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isValidating,
      bool isRegistered,
      bool updateSuccess,
      Option<Either<AuthFailure, Unit>> authStateOption});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object gender = freezed,
    Object phoneNumber = freezed,
    Object showErrorMessages = freezed,
    Object isValidating = freezed,
    Object isRegistered = freezed,
    Object updateSuccess = freezed,
    Object authStateOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      gender: gender == freezed ? _value.gender : gender as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isValidating:
          isValidating == freezed ? _value.isValidating : isValidating as bool,
      isRegistered:
          isRegistered == freezed ? _value.isRegistered : isRegistered as bool,
      updateSuccess: updateSuccess == freezed
          ? _value.updateSuccess
          : updateSuccess as bool,
      authStateOption: authStateOption == freezed
          ? _value.authStateOption
          : authStateOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationStateCopyWith(_AuthenticationState value,
          $Res Function(_AuthenticationState) then) =
      __$AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      Password password,
      String gender,
      PhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isValidating,
      bool isRegistered,
      bool updateSuccess,
      Option<Either<AuthFailure, Unit>> authStateOption});
}

/// @nodoc
class __$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationStateCopyWith<$Res> {
  __$AuthenticationStateCopyWithImpl(
      _AuthenticationState _value, $Res Function(_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticationState));

  @override
  _AuthenticationState get _value => super._value as _AuthenticationState;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object gender = freezed,
    Object phoneNumber = freezed,
    Object showErrorMessages = freezed,
    Object isValidating = freezed,
    Object isRegistered = freezed,
    Object updateSuccess = freezed,
    Object authStateOption = freezed,
  }) {
    return _then(_AuthenticationState(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      gender: gender == freezed ? _value.gender : gender as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isValidating:
          isValidating == freezed ? _value.isValidating : isValidating as bool,
      isRegistered:
          isRegistered == freezed ? _value.isRegistered : isRegistered as bool,
      updateSuccess: updateSuccess == freezed
          ? _value.updateSuccess
          : updateSuccess as bool,
      authStateOption: authStateOption == freezed
          ? _value.authStateOption
          : authStateOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AuthenticationState
    with DiagnosticableTreeMixin
    implements _AuthenticationState {
  const _$_AuthenticationState(
      {@required this.username,
      @required this.emailAddress,
      @required this.password,
      @required this.gender,
      @required this.phoneNumber,
      @required this.showErrorMessages,
      @required this.isValidating,
      @required this.isRegistered,
      @required this.updateSuccess,
      @required this.authStateOption})
      : assert(username != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(gender != null),
        assert(phoneNumber != null),
        assert(showErrorMessages != null),
        assert(isValidating != null),
        assert(isRegistered != null),
        assert(updateSuccess != null),
        assert(authStateOption != null);

  @override
  final Username username;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final String gender;
  @override
  final PhoneNumber phoneNumber;
  @override
  final bool showErrorMessages;
  @override
  final bool isValidating;
  @override
  final bool isRegistered;
  @override
  final bool updateSuccess;
  @override
  final Option<Either<AuthFailure, Unit>> authStateOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState(username: $username, emailAddress: $emailAddress, password: $password, gender: $gender, phoneNumber: $phoneNumber, showErrorMessages: $showErrorMessages, isValidating: $isValidating, isRegistered: $isRegistered, updateSuccess: $updateSuccess, authStateOption: $authStateOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isValidating', isValidating))
      ..add(DiagnosticsProperty('isRegistered', isRegistered))
      ..add(DiagnosticsProperty('updateSuccess', updateSuccess))
      ..add(DiagnosticsProperty('authStateOption', authStateOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isValidating, isValidating) ||
                const DeepCollectionEquality()
                    .equals(other.isValidating, isValidating)) &&
            (identical(other.isRegistered, isRegistered) ||
                const DeepCollectionEquality()
                    .equals(other.isRegistered, isRegistered)) &&
            (identical(other.updateSuccess, updateSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.updateSuccess, updateSuccess)) &&
            (identical(other.authStateOption, authStateOption) ||
                const DeepCollectionEquality()
                    .equals(other.authStateOption, authStateOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isValidating) ^
      const DeepCollectionEquality().hash(isRegistered) ^
      const DeepCollectionEquality().hash(updateSuccess) ^
      const DeepCollectionEquality().hash(authStateOption);

  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      __$AuthenticationStateCopyWithImpl<_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
          {@required Username username,
          @required EmailAddress emailAddress,
          @required Password password,
          @required String gender,
          @required PhoneNumber phoneNumber,
          @required bool showErrorMessages,
          @required bool isValidating,
          @required bool isRegistered,
          @required bool updateSuccess,
          @required Option<Either<AuthFailure, Unit>> authStateOption}) =
      _$_AuthenticationState;

  @override
  Username get username;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  String get gender;
  @override
  PhoneNumber get phoneNumber;
  @override
  bool get showErrorMessages;
  @override
  bool get isValidating;
  @override
  bool get isRegistered;
  @override
  bool get updateSuccess;
  @override
  Option<Either<AuthFailure, Unit>> get authStateOption;
  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith;
}
