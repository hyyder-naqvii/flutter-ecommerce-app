import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/auth/auth_failure.dart';
import 'package:ecommerce_app/domain/auth/value_objects/email_address.dart';
import 'package:ecommerce_app/domain/auth/value_objects/password.dart';
import 'package:ecommerce_app/domain/auth/value_objects/phone_no.dart';
import 'package:ecommerce_app/domain/auth/value_objects/username.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';



part 'authentication_state.freezed.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
    @required String gender,
    @required PhoneNumber phoneNumber,
    @required bool showErrorMessages,
    @required bool isValidating,
    @required bool isRegistered,
    @required bool updateSuccess,
    @required Option<Either<AuthFailure, Unit>> authStateOption,

  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(
      username: Username(''),
      emailAddress: EmailAddress(''),
      password: Password(''),
      gender: '',
      phoneNumber: PhoneNumber(''),
      showErrorMessages: false,
      isValidating: false,
      isRegistered: false,
      updateSuccess: false,
      authStateOption: none());
}
