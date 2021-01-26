part of 'product_image_loader_bloc.dart';

@freezed
abstract class ProductImageLoaderEvent with _$ProductImageLoaderEvent {
  const factory ProductImageLoaderEvent.getProductImage(String productID) = GetProductImage;
  // const factory ProductImageLoaderEvent.updateProductImage(String productID,{@required bool removeInstead}) = UpdateProductImage;
}