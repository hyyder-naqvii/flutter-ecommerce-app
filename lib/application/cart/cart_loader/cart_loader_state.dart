part of 'cart_loader_bloc.dart';

@freezed
abstract class CartLoaderState with _$CartLoaderState {
  const factory CartLoaderState.initial() = _Initial;
  const factory CartLoaderState.loadingCarts() = _LoadingCarts;
  const factory CartLoaderState.loadSuccess(List<Cart> carts) = _LoadSuccess;
  //ToDo Implement Cart Failures in the Future
  const factory CartLoaderState.loadFailure(String failure) = _LoadFailure;
}