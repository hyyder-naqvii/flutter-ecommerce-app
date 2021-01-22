// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc/bloc/auth_bloc.dart';
import 'application/auth/auth_bloc/authentication_bloc.dart';
import 'application/cart/cart_actor/cart_actor_bloc.dart';
import 'infrastructure/database/tables/carts/carts_table.dart';
import 'application/cart/cart_loader/cart_loader_bloc.dart';
import 'infrastructure/auth/firebase_authenticate.dart';
import 'infrastructure/core/firebase_authenticate_register_module.dart';
import 'domain/auth/interface/iauthenticate.dart';
import 'domain/cart/interface/i_cart_repository.dart';
import 'domain/product/interface/i_product_repository.dart';
import 'domain/user/interface/i_user_repository.dart';
import 'infrastructure/database/tables/users/users_table.dart';
import 'infrastructure/database/core/obay_database.dart';
import 'application/products/product_form/product_form_bloc.dart';
import 'application/products/product_loader/product_loader_bloc.dart';
import 'infrastructure/firestore/product/repository/product_repository.dart';
import 'infrastructure/firestore/user/repository/user_repository.dart';
import 'application/users/users_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseAuthenticateRegisterModule =
      _$FirebaseAuthenticateRegisterModule();
  gh.lazySingleton<FirebaseAuth>(
      () => firebaseAuthenticateRegisterModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(
      () => firebaseAuthenticateRegisterModule.firebaseFirestore);
  gh.lazySingleton<GoogleSignIn>(
      () => firebaseAuthenticateRegisterModule.googleSignIn);
  gh.lazySingleton<IAuthenticate>(
      () => FirebaseAuthenticate(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<IProductRepository>(
      () => ProductRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IUserRepository>(
      () => UserRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<ObayDatabase>(() => ObayDatabase());
  gh.factory<ProductFormBloc>(() => ProductFormBloc(get<IProductRepository>()));
  gh.factory<ProductLoaderBloc>(
      () => ProductLoaderBloc(get<IProductRepository>()));
  gh.factory<UsersBloc>(
      () => UsersBloc(get<IAuthenticate>(), get<IUserRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthenticate>()));
  gh.factory<AuthenticationBloc>(
      () => AuthenticationBloc(get<IAuthenticate>(), get<IUserRepository>()));
  gh.lazySingleton<ICartRepository>(() => CartDAO(get<ObayDatabase>()));
  gh.lazySingleton<OUserDAO>(() => OUserDAO(get<ObayDatabase>()));
  gh.factory<CartActorBloc>(
      () => CartActorBloc(get<ICartRepository>(), get<IProductRepository>()));
  gh.factory<CartLoaderBloc>(
      () => CartLoaderBloc(get<ICartRepository>(), get<IAuthenticate>()));
  return get;
}

class _$FirebaseAuthenticateRegisterModule
    extends FirebaseAuthenticateRegisterModule {}
