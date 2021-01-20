part of 'product_loader_bloc.dart';

@freezed
abstract class ProductLoaderEvent with _$ProductLoaderEvent {
  const factory ProductLoaderEvent.watchAllProducts() = _WatchAllProducts;
  const factory ProductLoaderEvent.getAllProducts() = _GetAllProducts;
  const factory ProductLoaderEvent.getByCategory(String category) = _GetByCategory;
  const factory ProductLoaderEvent.getByProductID(String productID) = _GetByProductID;
}