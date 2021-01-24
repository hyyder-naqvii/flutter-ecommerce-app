import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/cart/interface/i_cart_repository.dart';
import 'package:ecommerce_app/domain/product/interface/i_product_repository.dart';
import 'package:ecommerce_app/hardcoded/checkout_data.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';


part 'cart_actor_bloc.freezed.dart';

part 'cart_actor_event.dart';

part 'cart_actor_state.dart';

@injectable
class CartActorBloc extends Bloc<CartActorEvent, CartActorState> {
  final ICartRepository _cartRepository;
  final IProductRepository _productRepository;
  CartActorBloc(this._cartRepository, this._productRepository) : super(const CartActorState.initial());

  @override
  Stream<CartActorState> mapEventToState(CartActorEvent event,) async* {
    yield* event.map(
        deleteCart: (e) async* {
          yield const CartActorState.actionPerformed();
          final actionSuccessOrFailure =
          await _cartRepository.removeFromCart(e.cart.toCompanion(true));
          yield actionSuccessOrFailure.fold(
                (f) => const CartActorState.actionFailure(),
                (s) => const CartActorState.actionSuccess(),
          );
        },
        addCart: (e) async* {
          yield const CartActorState.actionPerformed();

          final bool _cartAlreadyExists =
          await _cartRepository.cartAlreadyExists(e.cart.toCompanion(true));
          if (_cartAlreadyExists) {
            print("Cart Already Exists");
            final _cart = await _cartRepository.getCartFromProductID(
                e.cart.userID, e.cart.productID);
            if (_cart.isRight() && _cart != null) {
              final int _quantity = _cart
                  .getOrElse(null)
                  .productQuantity + 1;
              final Cart cart = Cart(
                userID: _cart
                    .getOrElse(null)
                    .userID,
                productID: _cart
                    .getOrElse(null)
                    .productID,
                productQuantity: _quantity, totalPrice: _cart.getOrElse(null).totalPrice,

              );


              final actionSuccessOrFailure =
              await _cartRepository.changeProductQuantity(
                  cart.toCompanion(true));
              yield actionSuccessOrFailure.fold(
                    (f) => const CartActorState.actionFailure(),
                    (s) => const CartActorState.actionSuccess(),
              );
            } else {
              yield const CartActorState.actionFailure();
            }
          } else {
            final actionSuccessOrFailure =
            await _cartRepository.addCart(e.cart.toCompanion(true));
            yield actionSuccessOrFailure.fold(
                  (f) => const CartActorState.actionFailure(),
                  (s) => const CartActorState.actionSuccess(),
            );
          }
        },
        increaseQuantity: (e) async* {
          yield const CartActorState.actionPerformed();
          final int _quantity = e.cart.productQuantity + 1;

          final actionSuccessOrFailure =
          await _cartRepository.changeProductQuantity(e.cart.copyWith(
            productQuantity: _quantity,
          ).toCompanion(true));
          yield actionSuccessOrFailure.fold(
                (f) => const CartActorState.actionFailure(),
                (s) => const CartActorState.actionSuccess(),
          );
        },
        decreaseQuantity: (e) async* {
          yield const CartActorState.actionPerformed();
          final int _quantity = e.cart.productQuantity - 1;

          final actionSuccessOrFailure =
          await _cartRepository.changeProductQuantity(e.cart.copyWith(
            productQuantity: _quantity,
          ).toCompanion(true));
          yield actionSuccessOrFailure.fold(
                (f) => const CartActorState.actionFailure(),
                (s) => const CartActorState.actionSuccess(),
          );
        },
        deleteAll: (e) async* {
          print("Delete All Called");
          yield const CartActorState.actionPerformed();
          await _cartRepository.deleteAllItemsFromCart(e.userID);
          yield const CartActorState.actionSuccess();
           },

        calculateTotal: (e)async* {
          print("Callled Checkout");
      final carts = await _cartRepository.getUserCart(e.userID).then((value) => value.getOrElse(null));
      print(carts.length);

      int subTotal = 0;
      carts.forEach((cart) => subTotal += cart.productQuantity * cart.totalPrice);
       print("Subtotal : $subTotal");
       yield CartActorState.totalRequested(CheckOutData.fromSubTotal(subTotal));
    });
  }

}
