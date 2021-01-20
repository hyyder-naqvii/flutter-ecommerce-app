import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ecommerce_app/hardcoded/admin_check.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthenticate authenticate;

  AuthBloc(this.authenticate) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      requestAuthState: (e) async* {
        final OOGLOOUser user = authenticate.getSignedInUser();
        if(user != null){
          if(AdminCheck.isAdmin(user)){
            yield state.copyWith(isAuthenticated : true, isAdmin : true);
          }
          else{
            yield state.copyWith(isAuthenticated : true, isAdmin : false);
          }
        }
        else{
          yield state.copyWith(isAuthenticated : false, isAdmin : false);
        }
      },
      signOut: (e) async* {
        authenticate.signOut();
        yield state.copyWith(isAuthenticated: false,isAdmin : false);
      },
    );
  }
}
