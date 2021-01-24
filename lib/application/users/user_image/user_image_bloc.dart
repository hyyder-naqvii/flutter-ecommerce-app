import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:ecommerce_app/domain/user/interface/i_user_repository.dart';
import 'package:ecommerce_app/domain/user/value_objects/user_failures.dart';
import 'package:ecommerce_app/presentation/components/image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'user_image_bloc.freezed.dart';

part 'user_image_event.dart';

part 'user_image_state.dart';

@injectable
class UserImageBloc extends Bloc<UserImageEvent, UserImageState> {
  final IAuthenticate _iAuthenticate;
  final IUserRepository _iUserRepository;

  UserImageBloc(this._iAuthenticate, this._iUserRepository)
      : super(const UserImageState.initial());

  @override
  Stream<UserImageState> mapEventToState(
    UserImageEvent event,
  ) async* {
    yield* event.map(updateUserImage: (e) async* {
      print("Update Image Called!");
      if (!e.removeInstead) {
        yield const UserImageState.loadingImage();
        final File image = await ImagePickerUtility.pickImageFromGallery();
        final _imageUploadOption = await _iUserRepository.updateUserImage(
            _iAuthenticate.getSignedInUser().uID.value.getOrElse(null), image);
        yield _imageUploadOption.fold(
          (failure) => UserImageState.imageLoadFailure(failure),
          (user) => UserImageState.imageLoadSuccess(user),
        );
      } else {
        final _imageUploadOption = await _iUserRepository.updateUserImage(
            _iAuthenticate.getSignedInUser().uID.value.getOrElse(null),null);
        yield _imageUploadOption.fold(
              (failure) => UserImageState.imageLoadFailure(failure),
              (user) => const UserImageState.imageLoadSuccess(''),
        );
      }
    }, getUserImage: (e) async* {
      yield const UserImageState.loadingImage();
      final userSuccessOrFailure = await _iUserRepository.getUserWithID(
          _iAuthenticate.getSignedInUser().uID.value.getOrElse(null));
      yield userSuccessOrFailure.fold(
        (failure) =>  UserImageState.imageLoadFailure(failure),
        (user) {

          return UserImageState.imageLoadSuccess(user.profilePicUrl);
        },
      );
    });
  }
}
