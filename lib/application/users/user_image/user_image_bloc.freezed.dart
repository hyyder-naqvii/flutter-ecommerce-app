// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserImageEventTearOff {
  const _$UserImageEventTearOff();

// ignore: unused_element
  GetUserImage getUserImage() {
    return const GetUserImage();
  }

// ignore: unused_element
  UpdateUserImage updateUserImage({@required bool removeInstead}) {
    return UpdateUserImage(
      removeInstead: removeInstead,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserImageEvent = _$UserImageEventTearOff();

/// @nodoc
mixin _$UserImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getUserImage(),
    @required TResult updateUserImage(bool removeInstead),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getUserImage(),
    TResult updateUserImage(bool removeInstead),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getUserImage(GetUserImage value),
    @required TResult updateUserImage(UpdateUserImage value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getUserImage(GetUserImage value),
    TResult updateUserImage(UpdateUserImage value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserImageEventCopyWith<$Res> {
  factory $UserImageEventCopyWith(
          UserImageEvent value, $Res Function(UserImageEvent) then) =
      _$UserImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserImageEventCopyWithImpl<$Res>
    implements $UserImageEventCopyWith<$Res> {
  _$UserImageEventCopyWithImpl(this._value, this._then);

  final UserImageEvent _value;
  // ignore: unused_field
  final $Res Function(UserImageEvent) _then;
}

/// @nodoc
abstract class $GetUserImageCopyWith<$Res> {
  factory $GetUserImageCopyWith(
          GetUserImage value, $Res Function(GetUserImage) then) =
      _$GetUserImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserImageCopyWithImpl<$Res>
    extends _$UserImageEventCopyWithImpl<$Res>
    implements $GetUserImageCopyWith<$Res> {
  _$GetUserImageCopyWithImpl(
      GetUserImage _value, $Res Function(GetUserImage) _then)
      : super(_value, (v) => _then(v as GetUserImage));

  @override
  GetUserImage get _value => super._value as GetUserImage;
}

/// @nodoc
class _$GetUserImage implements GetUserImage {
  const _$GetUserImage();

  @override
  String toString() {
    return 'UserImageEvent.getUserImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetUserImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getUserImage(),
    @required TResult updateUserImage(bool removeInstead),
  }) {
    assert(getUserImage != null);
    assert(updateUserImage != null);
    return getUserImage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getUserImage(),
    TResult updateUserImage(bool removeInstead),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserImage != null) {
      return getUserImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getUserImage(GetUserImage value),
    @required TResult updateUserImage(UpdateUserImage value),
  }) {
    assert(getUserImage != null);
    assert(updateUserImage != null);
    return getUserImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getUserImage(GetUserImage value),
    TResult updateUserImage(UpdateUserImage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserImage != null) {
      return getUserImage(this);
    }
    return orElse();
  }
}

abstract class GetUserImage implements UserImageEvent {
  const factory GetUserImage() = _$GetUserImage;
}

/// @nodoc
abstract class $UpdateUserImageCopyWith<$Res> {
  factory $UpdateUserImageCopyWith(
          UpdateUserImage value, $Res Function(UpdateUserImage) then) =
      _$UpdateUserImageCopyWithImpl<$Res>;
  $Res call({bool removeInstead});
}

/// @nodoc
class _$UpdateUserImageCopyWithImpl<$Res>
    extends _$UserImageEventCopyWithImpl<$Res>
    implements $UpdateUserImageCopyWith<$Res> {
  _$UpdateUserImageCopyWithImpl(
      UpdateUserImage _value, $Res Function(UpdateUserImage) _then)
      : super(_value, (v) => _then(v as UpdateUserImage));

  @override
  UpdateUserImage get _value => super._value as UpdateUserImage;

  @override
  $Res call({
    Object removeInstead = freezed,
  }) {
    return _then(UpdateUserImage(
      removeInstead: removeInstead == freezed
          ? _value.removeInstead
          : removeInstead as bool,
    ));
  }
}

/// @nodoc
class _$UpdateUserImage implements UpdateUserImage {
  const _$UpdateUserImage({@required this.removeInstead})
      : assert(removeInstead != null);

  @override
  final bool removeInstead;

  @override
  String toString() {
    return 'UserImageEvent.updateUserImage(removeInstead: $removeInstead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserImage &&
            (identical(other.removeInstead, removeInstead) ||
                const DeepCollectionEquality()
                    .equals(other.removeInstead, removeInstead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(removeInstead);

  @JsonKey(ignore: true)
  @override
  $UpdateUserImageCopyWith<UpdateUserImage> get copyWith =>
      _$UpdateUserImageCopyWithImpl<UpdateUserImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getUserImage(),
    @required TResult updateUserImage(bool removeInstead),
  }) {
    assert(getUserImage != null);
    assert(updateUserImage != null);
    return updateUserImage(removeInstead);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getUserImage(),
    TResult updateUserImage(bool removeInstead),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateUserImage != null) {
      return updateUserImage(removeInstead);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getUserImage(GetUserImage value),
    @required TResult updateUserImage(UpdateUserImage value),
  }) {
    assert(getUserImage != null);
    assert(updateUserImage != null);
    return updateUserImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getUserImage(GetUserImage value),
    TResult updateUserImage(UpdateUserImage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateUserImage != null) {
      return updateUserImage(this);
    }
    return orElse();
  }
}

abstract class UpdateUserImage implements UserImageEvent {
  const factory UpdateUserImage({@required bool removeInstead}) =
      _$UpdateUserImage;

  bool get removeInstead;
  @JsonKey(ignore: true)
  $UpdateUserImageCopyWith<UpdateUserImage> get copyWith;
}

/// @nodoc
class _$UserImageStateTearOff {
  const _$UserImageStateTearOff();

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
  ImageLoadFailure imageLoadFailure(UserFailure failure) {
    return ImageLoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserImageState = _$UserImageStateTearOff();

/// @nodoc
mixin _$UserImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingImage(),
    @required TResult imageLoadSuccess(String imageURL),
    @required TResult imageLoadFailure(UserFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingImage(),
    TResult imageLoadSuccess(String imageURL),
    TResult imageLoadFailure(UserFailure failure),
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
abstract class $UserImageStateCopyWith<$Res> {
  factory $UserImageStateCopyWith(
          UserImageState value, $Res Function(UserImageState) then) =
      _$UserImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserImageStateCopyWithImpl<$Res>
    implements $UserImageStateCopyWith<$Res> {
  _$UserImageStateCopyWithImpl(this._value, this._then);

  final UserImageState _value;
  // ignore: unused_field
  final $Res Function(UserImageState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$UserImageStateCopyWithImpl<$Res>
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
    return 'UserImageState.initial()';
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
    @required TResult imageLoadFailure(UserFailure failure),
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
    TResult imageLoadFailure(UserFailure failure),
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

abstract class Initial implements UserImageState {
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
    extends _$UserImageStateCopyWithImpl<$Res>
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
    return 'UserImageState.loadingImage()';
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
    @required TResult imageLoadFailure(UserFailure failure),
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
    TResult imageLoadFailure(UserFailure failure),
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

abstract class LoadingImage implements UserImageState {
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
    extends _$UserImageStateCopyWithImpl<$Res>
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
    return 'UserImageState.imageLoadSuccess(imageURL: $imageURL)';
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
    @required TResult imageLoadFailure(UserFailure failure),
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
    TResult imageLoadFailure(UserFailure failure),
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

abstract class ImageLoadSuccess implements UserImageState {
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
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ImageLoadFailureCopyWithImpl<$Res>
    extends _$UserImageStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$ImageLoadFailure implements ImageLoadFailure {
  const _$ImageLoadFailure(this.failure) : assert(failure != null);

  @override
  final UserFailure failure;

  @override
  String toString() {
    return 'UserImageState.imageLoadFailure(failure: $failure)';
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
    @required TResult imageLoadFailure(UserFailure failure),
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
    TResult imageLoadFailure(UserFailure failure),
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

abstract class ImageLoadFailure implements UserImageState {
  const factory ImageLoadFailure(UserFailure failure) = _$ImageLoadFailure;

  UserFailure get failure;
  @JsonKey(ignore: true)
  $ImageLoadFailureCopyWith<ImageLoadFailure> get copyWith;
}
