import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/application/auth/auth_bloc/authentication_state.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:ecommerce_app/infrastructure/database/tables/users/users_table.dart';
import 'package:ecommerce_app/presentation/components/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:moor/moor.dart';

part 'users_bloc.freezed.dart';
part 'users_event.dart';
part 'users_state.dart';
@injectable
class UsersBloc extends Bloc<UsersEvent, UsersState> {

  final OUserDAO userDAO;

  UsersBloc(this.userDAO) : super(UsersState.initial());

  @override
  Stream<UsersState> mapEventToState(
    UsersEvent event,
  ) async* {
    yield* event.map(getCurrentUser: (e)async*{
      final String uID = e.oUser.uID.value.getOrElse(null);

      final OUser user = await userDAO.getUserByID(uID);
      print(user.fullName);
      yield state.copyWith(
        user: user,
      );
    }, updateCurrentUserProfilePic: (e) async* {

      if(!e.removeInstead){
        final Uint8List image = await ImagePickerUtility.pickImageFromCamera();
        if(image != null){
          final user =  OUsersCompanion(
            email: Value(e.oUser.email),
            password: Value(e.oUser.password),
            userID: Value(e.oUser.userID),
            fullName: Value(e.oUser.fullName),
            profilePic: Value(image),

          );
          userDAO.updateUser(user);
          final OUser newUser = await userDAO.getUserByID(e.oUser.userID);
          yield state.copyWith(
              user : newUser
          );

      }
        else{
          yield state.copyWith(
            user : state.user,
          );
        }
      }
      else{
        final user =  OUsersCompanion(
          email: Value(e.oUser.email),
          password: Value(e.oUser.password),
          userID: Value(e.oUser.userID),
          fullName: Value(e.oUser.fullName),
          profilePic: const Value(null),
        );
        userDAO.updateUser(user);
        final OUser newUser = await userDAO.getUserByID(e.oUser.userID);
        yield state.copyWith(
            user : newUser
        );
      }
    });
  }
}
