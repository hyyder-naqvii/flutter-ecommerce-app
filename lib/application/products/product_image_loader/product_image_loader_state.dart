part of 'product_image_loader_bloc.dart';

@freezed
abstract class ProductImageLoaderState with _$ProductImageLoaderState {
  const factory ProductImageLoaderState.initial() = Initial;
  const factory ProductImageLoaderState.loadingImage() = LoadingImage;
  const factory ProductImageLoaderState.imageLoadSuccess(String imageURL) = ImageLoadSuccess;
  const factory ProductImageLoaderState.imageLoadFailure(ProductFailure failure) = ImageLoadFailure;


}