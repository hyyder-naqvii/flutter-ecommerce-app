import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:ecommerce_app/domain/user/interface/i_user_repository.dart';
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
  final IAuthenticate _iAuthenticate;
  final IUserRepository _iUserRepository;

  UsersBloc(this._iAuthenticate, this._iUserRepository)
      : super(UsersState.initial());

  @override
  Stream<UsersState> mapEventToState(
    UsersEvent event,
  ) async* {
    yield* event.map(getCurrentUser: (e) async* {
      final _userDTOOption = await _iUserRepository.getUserWithID(
          _iAuthenticate.getSignedInUser().uID.value.getOrElse(null));
      if (_userDTOOption.isRight()) {
        final OOGLOOUser _user = _userDTOOption.getOrElse(null);
        yield state.copyWith(
          user: _user,
        );
      } else {
        yield state;
      }
    }, updateCurrentUserProfilePic: (e) async* {
      if (!e.removeInstead) {
        final Uint8List image = await ImagePickerUtility.pickImageFromCamera();
      } else {
        yield state.copyWith(user: state.user);
      }
    }, watchCurrentUser: (e) async* {
      final _userDTOOption = _iUserRepository.watchUserWithID(
          _iAuthenticate.getSignedInUser().uID.value.getOrElse(null));

       yield* _userDTOOption.map((event) => event.fold(
          (l) => state,
          (user) =>
                 state.copyWith(
                  user: user,
                )
              ));
    });
  }
}
