import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/auth/auth_failure.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/auth/value_objects/email_address.dart';
import 'package:ecommerce_app/domain/auth/value_objects/password.dart';
import 'package:ecommerce_app/domain/auth/value_objects/phone_no.dart';
import 'package:ecommerce_app/domain/auth/value_objects/uniqueID.dart';
import 'package:ecommerce_app/domain/auth/value_objects/username.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthenticate)
class FirebaseAuthenticate implements IAuthenticate {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthenticate(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailStr = emailAddress.getOrCrash().toString();
    final passwordStr = password.getOrCrash().toString();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr);

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailStr = emailAddress.getOrCrash().toString();
    final passwordStr = password.getOrCrash().toString();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );
      final signInWithCredentials =
          await _firebaseAuth.signInWithCredential(authCredential);
      if (signInWithCredentials.user != null) {
        return right(unit);
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  OOGLOOUser getSignedInUser() {
    if (_firebaseAuth.currentUser != null) {
      final String uID = _firebaseAuth.currentUser.uid;
      return OOGLOOUser(
        uID: UniqueID.fromUniqueString(uID),
        emailAddress: EmailAddress(_firebaseAuth.currentUser.email),
        username: Username(''),
        password: Password(''),
        phoneNumber: PhoneNumber(''),
      );
    }

    return null;
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}
