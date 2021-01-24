import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/cart/interface/i_cart_repository.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'cart_loader_bloc.freezed.dart';

part 'cart_loader_event.dart';

part 'cart_loader_state.dart';

@injectable
class CartLoaderBloc extends Bloc<CartLoaderEvent, CartLoaderState> {
  final ICartRepository _cartRepository;
  final IAuthenticate _authenticate;


  CartLoaderBloc(this._cartRepository, this._authenticate)
      : super(const CartLoaderState.initial());

  @override
  Stream<CartLoaderState> mapEventToState(
    CartLoaderEvent event,
  ) async* {
    yield* event.map(
      getUserCarts: (e) async* {
        print("Load CArts");
        yield const CartLoaderState.loadingCarts();
        final cartSuccessOrFaillure = await _cartRepository.getUserCart(
            _authenticate.getSignedInUser().uID.value.getOrElse(null));
        yield cartSuccessOrFaillure.fold(
          (failure) => CartLoaderState.loadFailure(failure),
          (cart) => CartLoaderState.loadSuccess(cart),
        );
      },
      watchUserCarts: (e) async* {
        print("Watch Running");
        yield const CartLoaderState.loadingCarts();
        final cartSuccessOrFaillure = _cartRepository.watchUserCart(
            _authenticate.getSignedInUser().uID.value.getOrElse(null));
        yield* cartSuccessOrFaillure
            .map((cartSuccessOrFaillure) => cartSuccessOrFaillure.fold(
                  (failure) => CartLoaderState.loadFailure(failure),
                  (cart) => CartLoaderState.loadSuccess(cart),
                ));
      },
    );
  }
}
