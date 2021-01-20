import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/auth/auth_failure.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/auth/value_objects/email_address.dart';
import 'package:ecommerce_app/domain/auth/value_objects/password.dart';
import 'package:ecommerce_app/domain/auth/value_objects/phone_no.dart';
import 'package:ecommerce_app/domain/auth/value_objects/username.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:ecommerce_app/infrastructure/database/tables/users/users_table.dart';

import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';


import 'authentication_event.dart';
import 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {

  final IAuthenticate _authenticate;
  final OUserDAO _oUserDAO;

  AuthenticationBloc(this._authenticate, this._oUserDAO) : super(AuthenticationState.initial());

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
            updateSuccess : false,
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
          if(failureOrSuccess != null && failureOrSuccess.isRight()){
            final OUser user  = await _oUserDAO.getUserByID(_authenticate.getSignedInUser().uID.value.getOrElse(null));
            if(user == null){
              final user = OUsersCompanion(
                email: Value(state.emailAddress.value.getOrElse(null)),
                password: Value(state.password.value.getOrElse(null)),
                userID: Value(_authenticate.getSignedInUser().uID.value.getOrElse(null)),
                fullName: const Value('John Doe'),

              );
              _oUserDAO.insertUser(user);
            }


          }

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

        if(failureOrSuccess != null && failureOrSuccess.isRight()){
          _addNewUserToDatabase();

        }

        yield state.copyWith(
          isValidating: false,
          showErrorMessages: true,
          isRegistered : true,
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
      }, genderChanged: (e)async* {
        yield state.copyWith(
          gender : e.gender,
          authStateOption: none(),
        );
    }, phoneNumberChanged:(e)async* {

      yield state.copyWith(
        phoneNumber: PhoneNumber(e.phoneNumber),
        authStateOption: none(),
      );
    }, profileInformationUpdated: (e)async* {
      final isFullNameValid = state.username.isValid();
      final isPhoneNumberValid = state.phoneNumber.isValid();

      if(isFullNameValid && isPhoneNumberValid){

        final OUser oldUser = await _oUserDAO.getUserByID(_authenticate.getSignedInUser().uID.value.getOrElse(null));

        final user = OUsersCompanion(
          email: Value(oldUser.email),
          password: Value(oldUser.password),
          userID: Value(oldUser.userID),
          fullName: Value(state.username.value.getOrElse(null)),
          gender: Value(state.gender),
          phoneNo: Value(state.phoneNumber.value.getOrElse(null)),
        );
        _oUserDAO.updateUser(user);
        yield state.copyWith(
          showErrorMessages: false,
          updateSuccess : true,
        );
      }
      else{
        yield state.copyWith(
          showErrorMessages: true,
        );
      }
    },
    );
  }

  void _addNewUserToDatabase(){
    final user = OUsersCompanion(
      email: Value(state.emailAddress.value.getOrElse(null)),
      password: Value(state.password.value.getOrElse(null)),
      userID: Value(_authenticate.getSignedInUser().uID.value.getOrElse(null)),
      fullName: Value(state.username.value.getOrElse(null)),

    );
    _oUserDAO.insertUser(user);
    print("New User Added To Database");
  }

}
