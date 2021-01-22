import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:ecommerce_app/domain/user/interface/i_user_repository.dart';
import 'package:ecommerce_app/domain/user/value_objects/user_failures.dart';
import 'package:ecommerce_app/infrastructure/firestore/user/user_dto.dart';
import 'package:ecommerce_app/infrastructure/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository{

  final FirebaseFirestore _firebaseFirestore;

  UserRepository(this._firebaseFirestore);

  @override
  Future<Either<UserFailure, Unit>> insertNewUser(OOGLOOUser user) async{
    try {
      final userDTO = UserDTO.fromDomain(user);
      print(user);
      final userDataCollection =
          _firebaseFirestore.userDocument(userDTO.uID).userDataCollection;

      await userDataCollection.doc(userDTO.uID).set(userDTO.toJson());
      print("New User With ID : ${userDTO.uID} Added To FIrestore");
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.permissionDenied());
      } else {
        print(e.message);
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, OOGLOOUser>> getUserWithID(String uID) async{
    try {
      final snapshot =
      await _firebaseFirestore.userDocument(uID).userDataCollection.doc(uID).get();
      final OOGLOOUser user = UserDTO.fromFirestore(snapshot).toDomain();

      return right(user);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.permissionDenied());
      } else {
        print(e.message);
        return left(const UserFailure.unexpected());
      }
    }
  }
  Stream<Either<UserFailure, OOGLOOUser>> watchUserWithID(String uID)async*{
    final userDataCollection = _firebaseFirestore.userDocument(uID).userDataCollection;
    yield* userDataCollection.snapshots().map((snapshot) => right<UserFailure,OOGLOOUser>(
        snapshot.docs.map((d) => UserDTO.fromFirestore(d).toDomain()).first
    ));
  }


  @override
  Future<Either<UserFailure, Unit>> updateUserData(OOGLOOUser user)async {
    try {
      print("Update Called!");
      final userDTO = UserDTO.fromDomain(user);
      final userDataCollection =
          _firebaseFirestore.userDocument(userDTO.uID).userDataCollection;

      await userDataCollection.doc(userDTO.uID).update(userDTO.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.permissionDenied());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const UserFailure.updateError());
      } else {
        print(e.message);
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> deleteUser(OOGLOOUser user)async {
    try {
      final userID = user.uID.value.getOrElse(null);
      final userDataCollection =
          _firebaseFirestore.userDocument(userID).productCollection;

      // ignore: unnecessary_statements
      userDataCollection.doc(userID).delete;

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.permissionDenied());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const UserFailure.updateError());
      } else {
        print(e.message);
        return left(const UserFailure.unexpected());
      }
    }
  }

}