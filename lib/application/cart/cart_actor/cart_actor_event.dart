part of 'cart_actor_bloc.dart';

@freezed
abstract class CartActorEvent with _$CartActorEvent {
  const factory CartActorEvent.deleteCart(Cart cart) = _DeleteCart;
  const factory CartActorEvent.addCart(Cart cart) = _AddCart;
  const factory CartActorEvent.increaseQuantity(Cart cart) = _IncreaseQuantity;
  const factory CartActorEvent.decreaseQuantity(Cart cart) = _DecreaseQuantity;
  const factory CartActorEvent.deleteAll(String userID) = _DeleteAll;
  const factory CartActorEvent.calculateTotal(String userID) = _CalculateTotal;

}