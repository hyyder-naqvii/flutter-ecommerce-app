import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/auth/auth_failure.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/auth/value_objects/email_address.dart';
import 'package:ecommerce_app/domain/auth/value_objects/password.dart';
import 'package:ecommerce_app/domain/auth/value_objects/phone_no.dart';
import 'package:ecommerce_app/domain/auth/value_objects/username.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:ecommerce_app/domain/user/interface/i_user_repository.dart';
import 'package:injectable/injectable.dart';

import 'authentication_event.dart';
import 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthenticate _authenticate;
  final IUserRepository _iUserRepository;

  AuthenticationBloc(this._authenticate, this._iUserRepository)
      : super(AuthenticationState.initial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      resetState: (e) async* {
        yield state.copyWith(
            username: Username(''),
            emailAddress: EmailAddress(''),
            password: Password(''),
            showErrorMessages: false,
            updateSuccess: false,
            isValidating: false,
            authStateOption: none());
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.username),
          authStateOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
          authStateOption: none(),
        );
      },
      passWordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authStateOption: none(),
        );
      },
      signInButtonPressed: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isValidating: true,
            authStateOption: none(),
          );

          failureOrSuccess = await _authenticate.signInWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);
        }

        yield state.copyWith(
          isValidating: false,
          showErrorMessages: true,
          authStateOption: optionOf(failureOrSuccess),
        );
      },
      registerButtonPressed: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isValidating: true,
            authStateOption: none(),
          );
          failureOrSuccess = await _authenticate.registerWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);
        }

        if (failureOrSuccess != null && failureOrSuccess.isRight()) {
          final OOGLOOUser user = OOGLOOUser(
            uID: _authenticate.getSignedInUser().uID,
            emailAddress: state.emailAddress,
            password: state.password,
            username: state.username,
            phoneNumber: PhoneNumber(''),
            gender: OOGLOOUser.genders[0],
          );
          _iUserRepository.insertNewUser(user);
        }

        yield state.copyWith(
          isValidating: false,
          showErrorMessages: true,
          isRegistered: true,
          authStateOption: optionOf(failureOrSuccess),
        );
      },
      googleSignInPressed: (e) async* {
        yield state.copyWith(
          isValidating: true,
          authStateOption: none(),
        );
        final authState = await _authenticate.signInWithGoogle();

        yield state.copyWith(
          isValidating: false,
          authStateOption: some(authState),
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          gender: e.gender,
          authStateOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: PhoneNumber(e.phoneNumber),
          authStateOption: none(),
        );
      },
      profileInformationUpdated: (e) async* {
        yield state.copyWith(
          isValidating: true,
          authStateOption: none(),
        );
        final isUsernameValid = state.username.isValid();
        final isPhoneNoValid = state.phoneNumber.isValid();
        if (isUsernameValid && isPhoneNoValid) {
          final OOGLOOUser user = await _iUserRepository
              .getUserWithID(
                  _authenticate.getSignedInUser().uID.value.getOrElse(null))
              .then((value) => value.getOrElse(null));

          final updateFailureOrSuccess =
              await _iUserRepository.updateUserData(user.copyWith(
            username: state.username,
            phoneNumber: state.phoneNumber,
            gender: state.gender,
          ));
          yield state.copyWith(
            isValidating: false,
            showErrorMessages: updateFailureOrSuccess.isRight(),
          );
        } else {
          yield state.copyWith(
            isValidating: false,
            showErrorMessages: true,
          );
        }
      },
    );
  }
}
