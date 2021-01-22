import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_app/application/products/product_form/product_form_bloc.dart';
import 'package:ecommerce_app/application/users/users_bloc.dart';
import 'package:ecommerce_app/presentation/core/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc/authentication_bloc.dart';
import 'application/auth/auth_bloc/bloc/auth_bloc.dart';
import 'injection.dart';


//Features To Make in the future
/*
TODO Migrate Infrastructure to Firestore
ToDO Create Address Feature
TODO Create Payment Feature
TODO Create Favourites Feature
*/




void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // need explicit binding before new Firebase call
  await Firebase.initializeApp(); // new Firebase call;
  configureInjection(Environment.prod);
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) {
        return MultiBlocProvider(providers: [
          BlocProvider<AuthenticationBloc>(
            create: (context) => getIt<AuthenticationBloc>(),
          ),
          BlocProvider<AuthBloc>(
            create: (context) =>
            getIt<AuthBloc>()..add(const AuthEvent.requestAuthState()),
          ),
        ], child: Home());
      },
    ),
  );

}
