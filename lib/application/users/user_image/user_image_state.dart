part of 'user_image_bloc.dart';

@freezed
abstract class UserImageState with _$UserImageState {
  const factory UserImageState.initial() = Initial;
  const factory UserImageState.loadingImage() = LoadingImage;
  const factory UserImageState.imageLoadSuccess(String imageURL) = ImageLoadSuccess;
  const factory UserImageState.imageLoadFailure(UserFailure failure) = ImageLoadFailure;


}