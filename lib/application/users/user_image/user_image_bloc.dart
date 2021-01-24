import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_image_event.dart';
part 'user_image_state.dart';

class UserImageBloc extends Bloc<UserImageEvent, UserImageState> {
  UserImageBloc() : super(UserImageInitial());

  @override
  Stream<UserImageState> mapEventToState(
    UserImageEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
