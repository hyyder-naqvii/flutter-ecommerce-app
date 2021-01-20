part of 'product_loader_bloc.dart';

@freezed
abstract class ProductLoaderState with _$ProductLoaderState {
  const factory ProductLoaderState.initial() = _Initial;
  const factory ProductLoaderState.loadingProducts() = _LoadingProducts;
  const factory ProductLoaderState.loadSuccess(List<FSProduct> products) = _LoadSuccess;
  const factory ProductLoaderState.loadFailure(ProductFailure productFailure) = _LoadFailure;



}