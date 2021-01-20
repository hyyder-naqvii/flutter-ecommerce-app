

part of 'cart_loader_bloc.dart';
@freezed
abstract class CartLoaderEvent with _$CartLoaderEvent {
  const factory CartLoaderEvent.getUserCarts() = _GetUserCarts;
  const factory CartLoaderEvent.watchUserCarts() = _WatchUserCarts;
}