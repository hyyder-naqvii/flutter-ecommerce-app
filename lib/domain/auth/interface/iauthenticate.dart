import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/auth/value_objects/email_address.dart';
import 'package:ecommerce_app/domain/auth/value_objects/password.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:flutter/foundation.dart';

import '../auth_failure.dart';


abstract class IAuthenticate {
  OOGLOOUser getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {
      // ignore: non_constant_identifier_names
      @required EmailAddress emailAddress,
      // ignore: non_constant_identifier_names
      @required Password password});
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {
      // ignore: non_constant_identifier_names
      @required EmailAddress emailAddress,
      // ignore: non_constant_identifier_names
      @required Password password});
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
