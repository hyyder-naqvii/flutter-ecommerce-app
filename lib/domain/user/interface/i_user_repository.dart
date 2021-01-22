import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:ecommerce_app/domain/user/value_objects/user_failures.dart';

abstract class IUserRepository{
  Future<Either<UserFailure, OOGLOOUser>> getUserWithID(
      String uID);
// Future<Either<ProductFailure,List<FSProduct>>> getAny(String query);
  Future<Either<UserFailure, Unit>> insertNewUser(OOGLOOUser user);

  Future<Either<UserFailure, Unit>> updateUserData(OOGLOOUser user);

  Future<Either<UserFailure, Unit>> deleteUser(OOGLOOUser user);
  Stream<Either<UserFailure, OOGLOOUser>> watchUserWithID(String uID);
}