// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_image_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductImageLoaderEventTearOff {
  const _$ProductImageLoaderEventTearOff();

// ignore: unused_element
  GetProductImage getProductImage(String productID) {
    return GetProductImage(
      productID,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductImageLoaderEvent = _$ProductImageLoaderEventTearOff();

/// @nodoc
mixin _$ProductImageLoaderEvent {
  String get productID;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getProductImage(String productID),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getProductImage(String productID),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getProductImage(GetProductImage value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getProductImage(GetProductImage value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ProductImageLoaderEventCopyWith<ProductImageLoaderEvent> get copyWith;
}

/// @nodoc
abstract class $ProductImageLoaderEventCopyWith<$Res> {
  factory $ProductImageLoaderEventCopyWith(ProductImageLoaderEvent value,
          $Res Function(ProductImageLoaderEvent) then) =
      _$ProductImageLoaderEventCopyWithImpl<$Res>;
  $Res call({String productID});
}

/// @nodoc
class _$ProductImageLoaderEventCopyWithImpl<$Res>
    implements $ProductImageLoaderEventCopyWith<$Res> {
  _$ProductImageLoaderEventCopyWithImpl(this._value, this._then);

  final ProductImageLoaderEvent _value;
  // ignore: unused_field
  final $Res Function(ProductImageLoaderEvent) _then;

  @override
  $Res call({
    Object productID = freezed,
  }) {
    return _then(_value.copyWith(
      productID: productID == freezed ? _value.productID : productID as String,
    ));
  }
}

/// @nodoc
abstract class $GetProductImageCopyWith<$Res>
    implements $ProductImageLoaderEventCopyWith<$Res> {
  factory $GetProductImageCopyWith(
          GetProductImage value, $Res Function(GetProductImage) then) =
      _$GetProductImageCopyWithImpl<$Res>;
  @override
  $Res call({String productID});
}

/// @nodoc
class _$GetProductImageCopyWithImpl<$Res>
    extends _$ProductImageLoaderEventCopyWithImpl<$Res>
    implements $GetProductImageCopyWith<$Res> {
  _$GetProductImageCopyWithImpl(
      GetProductImage _value, $Res Function(GetProductImage) _then)
      : super(_value, (v) => _then(v as GetProductImage));

  @override
  GetProductImage get _value => super._value as GetProductImage;

  @override
  $Res call({
    Object productID = freezed,
  }) {
    return _then(GetProductImage(
      productID == freezed ? _value.productID : productID as String,
    ));
  }
}

/// @nodoc
class _$GetProductImage implements GetProductImage {
  const _$GetProductImage(this.productID) : assert(productID != null);

  @override
  final String productID;

  @override
  String toString() {
    return 'ProductImageLoaderEvent.getProductImage(productID: $productID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProductImage &&
            (identical(other.productID, productID) ||
                const DeepCollectionEquality()
                    .equals(other.productID, productID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productID);

  @JsonKey(ignore: true)
  @override
  $GetProductImageCopyWith<GetProductImage> get copyWith =>
      _$GetProductImageCopyWithImpl<GetProductImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getProductImage(String productID),
  }) {
    assert(getProductImage != null);
    return getProductImage(productID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getProductImage(String productID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductImage != null) {
      return getProductImage(productID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getProductImage(GetProductImage value),
  }) {
    assert(getProductImage != null);
    return getProductImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getProductImage(GetProductImage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductImage != null) {
      return getProductImage(this);
    }
    return orElse();
  }
}

abstract class GetProductImage implements ProductImageLoaderEvent {
  const factory GetProductImage(String productID) = _$GetProductImage;

  @override
  String get productID;
  @override
  @JsonKey(ignore: true)
  $GetProductImageCopyWith<GetProductImage> get copyWith;
}

/// @nodoc
class _$ProductImageLoaderStateTearOff {
  const _$ProductImageLoaderStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  LoadingImage loadingImage() {
    return const LoadingImage();
  }

// ignore: unused_element
  ImageLoadSuccess imageLoadSuccess(String imageURL) {
    return ImageLoadSuccess(
      imageURL,
    );
  }

// ignore: unused_element
  ImageLoadFailure imageLoadFailure(ProductFailure failure) {
    return ImageLoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductImageLoaderState = _$ProductImageLoaderStateTearOff();

/// @nodoc
mixin _$ProductImageLoaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingImage(),
    @required TResult imageLoadSuccess(String imageURL),
    @required TResult imageLoadFailure(ProductFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingImage(),
    TResult imageLoadSuccess(String imageURL),
    TResult imageLoadFailure(ProductFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadingImage(LoadingImage value),
    @required TResult imageLoadSuccess(ImageLoadSuccess value),
    @required TResult imageLoadFailure(ImageLoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadingImage(LoadingImage value),
    TResult imageLoadSuccess(ImageLoadSuccess value),
    TResult imageLoadFailure(ImageLoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductImageLoaderStateCopyWith<$Res> {
  factory $ProductImageLoaderStateCopyWith(ProductImageLoaderState value,
          $Res Function(ProductImageLoaderState) then) =
      _$ProductImageLoaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductImageLoaderStateCopyWithImpl<$Res>
    implements $ProductImageLoaderStateCopyWith<$Res> {
  _$ProductImageLoaderStateCopyWithImpl(this._value, this._then);

  final ProductImageLoaderState _value;
  // ignore: unused_field
  final $Res Function(ProductImageLoaderState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$ProductImageLoaderStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ProductImageLoaderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingImage(),
    @required TResult imageLoadSuccess(String imageURL),
    @required TResult imageLoadFailure(ProductFailure failure),
  }) {
    assert(initial != null);
    assert(loadingImage != null);
    assert(imageLoadSuccess != null);
    assert(imageLoadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingImage(),
    TResult imageLoadSuccess(String imageURL),
    TResult imageLoadFailure(ProductFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadingImage(LoadingImage value),
    @required TResult imageLoadSuccess(ImageLoadSuccess value),
    @required TResult imageLoadFailure(ImageLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingImage != null);
    assert(imageLoadSuccess != null);
    assert(imageLoadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadingImage(LoadingImage value),
    TResult imageLoadSuccess(ImageLoadSuccess value),
    TResult imageLoadFailure(ImageLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProductImageLoaderState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingImageCopyWith<$Res> {
  factory $LoadingImageCopyWith(
          LoadingImage value, $Res Function(LoadingImage) then) =
      _$LoadingImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingImageCopyWithImpl<$Res>
    extends _$ProductImageLoaderStateCopyWithImpl<$Res>
    implements $LoadingImageCopyWith<$Res> {
  _$LoadingImageCopyWithImpl(
      LoadingImage _value, $Res Function(LoadingImage) _then)
      : super(_value, (v) => _then(v as LoadingImage));

  @override
  LoadingImage get _value => super._value as LoadingImage;
}

/// @nodoc
class _$LoadingImage implements LoadingImage {
  const _$LoadingImage();

  @override
  String toString() {
    return 'ProductImageLoaderState.loadingImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingImage(),
    @required TResult imageLoadSuccess(String imageURL),
    @required TResult imageLoadFailure(ProductFailure failure),
  }) {
    assert(initial != null);
    assert(loadingImage != null);
    assert(imageLoadSuccess != null);
    assert(imageLoadFailure != null);
    return loadingImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingImage(),
    TResult imageLoadSuccess(String imageURL),
    TResult imageLoadFailure(ProductFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingImage != null) {
      return loadingImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadingImage(LoadingImage value),
    @required TResult imageLoadSuccess(ImageLoadSuccess value),
    @required TResult imageLoadFailure(ImageLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingImage != null);
    assert(imageLoadSuccess != null);
    assert(imageLoadFailure != null);
    return loadingImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadingImage(LoadingImage value),
    TResult imageLoadSuccess(ImageLoadSuccess value),
    TResult imageLoadFailure(ImageLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingImage != null) {
      return loadingImage(this);
    }
    return orElse();
  }
}

abstract class LoadingImage implements ProductImageLoaderState {
  const factory LoadingImage() = _$LoadingImage;
}

/// @nodoc
abstract class $ImageLoadSuccessCopyWith<$Res> {
  factory $ImageLoadSuccessCopyWith(
          ImageLoadSuccess value, $Res Function(ImageLoadSuccess) then) =
      _$ImageLoadSuccessCopyWithImpl<$Res>;
  $Res call({String imageURL});
}

/// @nodoc
class _$ImageLoadSuccessCopyWithImpl<$Res>
    extends _$ProductImageLoaderStateCopyWithImpl<$Res>
    implements $ImageLoadSuccessCopyWith<$Res> {
  _$ImageLoadSuccessCopyWithImpl(
      ImageLoadSuccess _value, $Res Function(ImageLoadSuccess) _then)
      : super(_value, (v) => _then(v as ImageLoadSuccess));

  @override
  ImageLoadSuccess get _value => super._value as ImageLoadSuccess;

  @override
  $Res call({
    Object imageURL = freezed,
  }) {
    return _then(ImageLoadSuccess(
      imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

/// @nodoc
class _$ImageLoadSuccess implements ImageLoadSuccess {
  const _$ImageLoadSuccess(this.imageURL) : assert(imageURL != null);

  @override
  final String imageURL;

  @override
  String toString() {
    return 'ProductImageLoaderState.imageLoadSuccess(imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageLoadSuccess &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageURL);

  @JsonKey(ignore: true)
  @override
  $ImageLoadSuccessCopyWith<ImageLoadSuccess> get copyWith =>
      _$ImageLoadSuccessCopyWithImpl<ImageLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingImage(),
    @required TResult imageLoadSuccess(String imageURL),
    @required TResult imageLoadFailure(ProductFailure failure),
  }) {
    assert(initial != null);
    assert(loadingImage != null);
    assert(imageLoadSuccess != null);
    assert(imageLoadFailure != null);
    return imageLoadSuccess(imageURL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingImage(),
    TResult imageLoadSuccess(String imageURL),
    TResult imageLoadFailure(ProductFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageLoadSuccess != null) {
      return imageLoadSuccess(imageURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadingImage(LoadingImage value),
    @required TResult imageLoadSuccess(ImageLoadSuccess value),
    @required TResult imageLoadFailure(ImageLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingImage != null);
    assert(imageLoadSuccess != null);
    assert(imageLoadFailure != null);
    return imageLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadingImage(LoadingImage value),
    TResult imageLoadSuccess(ImageLoadSuccess value),
    TResult imageLoadFailure(ImageLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageLoadSuccess != null) {
      return imageLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class ImageLoadSuccess implements ProductImageLoaderState {
  const factory ImageLoadSuccess(String imageURL) = _$ImageLoadSuccess;

  String get imageURL;
  @JsonKey(ignore: true)
  $ImageLoadSuccessCopyWith<ImageLoadSuccess> get copyWith;
}

/// @nodoc
abstract class $ImageLoadFailureCopyWith<$Res> {
  factory $ImageLoadFailureCopyWith(
          ImageLoadFailure value, $Res Function(ImageLoadFailure) then) =
      _$ImageLoadFailureCopyWithImpl<$Res>;
  $Res call({ProductFailure failure});

  $ProductFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ImageLoadFailureCopyWithImpl<$Res>
    extends _$ProductImageLoaderStateCopyWithImpl<$Res>
    implements $ImageLoadFailureCopyWith<$Res> {
  _$ImageLoadFailureCopyWithImpl(
      ImageLoadFailure _value, $Res Function(ImageLoadFailure) _then)
      : super(_value, (v) => _then(v as ImageLoadFailure));

  @override
  ImageLoadFailure get _value => super._value as ImageLoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(ImageLoadFailure(
      failure == freezed ? _value.failure : failure as ProductFailure,
    ));
  }

  @override
  $ProductFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ProductFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$ImageLoadFailure implements ImageLoadFailure {
  const _$ImageLoadFailure(this.failure) : assert(failure != null);

  @override
  final ProductFailure failure;

  @override
  String toString() {
    return 'ProductImageLoaderState.imageLoadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $ImageLoadFailureCopyWith<ImageLoadFailure> get copyWith =>
      _$ImageLoadFailureCopyWithImpl<ImageLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingImage(),
    @required TResult imageLoadSuccess(String imageURL),
    @required TResult imageLoadFailure(ProductFailure failure),
  }) {
    assert(initial != null);
    assert(loadingImage != null);
    assert(imageLoadSuccess != null);
    assert(imageLoadFailure != null);
    return imageLoadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingImage(),
    TResult imageLoadSuccess(String imageURL),
    TResult imageLoadFailure(ProductFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageLoadFailure != null) {
      return imageLoadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loadingImage(LoadingImage value),
    @required TResult imageLoadSuccess(ImageLoadSuccess value),
    @required TResult imageLoadFailure(ImageLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingImage != null);
    assert(imageLoadSuccess != null);
    assert(imageLoadFailure != null);
    return imageLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loadingImage(LoadingImage value),
    TResult imageLoadSuccess(ImageLoadSuccess value),
    TResult imageLoadFailure(ImageLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageLoadFailure != null) {
      return imageLoadFailure(this);
    }
    return orElse();
  }
}

abstract class ImageLoadFailure implements ProductImageLoaderState {
  const factory ImageLoadFailure(ProductFailure failure) = _$ImageLoadFailure;

  ProductFailure get failure;
  @JsonKey(ignore: true)
  $ImageLoadFailureCopyWith<ImageLoadFailure> get copyWith;
}
