// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_loader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductLoaderEventTearOff {
  const _$ProductLoaderEventTearOff();

// ignore: unused_element
  _WatchAllProducts watchAllProducts() {
    return const _WatchAllProducts();
  }

// ignore: unused_element
  _GetAllProducts getAllProducts() {
    return const _GetAllProducts();
  }

// ignore: unused_element
  _GetByCategory getByCategory(String category) {
    return _GetByCategory(
      category,
    );
  }

// ignore: unused_element
  _GetByProductID getByProductID(String productID) {
    return _GetByProductID(
      productID,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductLoaderEvent = _$ProductLoaderEventTearOff();

/// @nodoc
mixin _$ProductLoaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllProducts(),
    @required TResult getAllProducts(),
    @required TResult getByCategory(String category),
    @required TResult getByProductID(String productID),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllProducts(),
    TResult getAllProducts(),
    TResult getByCategory(String category),
    TResult getByProductID(String productID),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllProducts(_WatchAllProducts value),
    @required TResult getAllProducts(_GetAllProducts value),
    @required TResult getByCategory(_GetByCategory value),
    @required TResult getByProductID(_GetByProductID value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllProducts(_WatchAllProducts value),
    TResult getAllProducts(_GetAllProducts value),
    TResult getByCategory(_GetByCategory value),
    TResult getByProductID(_GetByProductID value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductLoaderEventCopyWith<$Res> {
  factory $ProductLoaderEventCopyWith(
          ProductLoaderEvent value, $Res Function(ProductLoaderEvent) then) =
      _$ProductLoaderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductLoaderEventCopyWithImpl<$Res>
    implements $ProductLoaderEventCopyWith<$Res> {
  _$ProductLoaderEventCopyWithImpl(this._value, this._then);

  final ProductLoaderEvent _value;
  // ignore: unused_field
  final $Res Function(ProductLoaderEvent) _then;
}

/// @nodoc
abstract class _$WatchAllProductsCopyWith<$Res> {
  factory _$WatchAllProductsCopyWith(
          _WatchAllProducts value, $Res Function(_WatchAllProducts) then) =
      __$WatchAllProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllProductsCopyWithImpl<$Res>
    extends _$ProductLoaderEventCopyWithImpl<$Res>
    implements _$WatchAllProductsCopyWith<$Res> {
  __$WatchAllProductsCopyWithImpl(
      _WatchAllProducts _value, $Res Function(_WatchAllProducts) _then)
      : super(_value, (v) => _then(v as _WatchAllProducts));

  @override
  _WatchAllProducts get _value => super._value as _WatchAllProducts;
}

/// @nodoc
class _$_WatchAllProducts implements _WatchAllProducts {
  const _$_WatchAllProducts();

  @override
  String toString() {
    return 'ProductLoaderEvent.watchAllProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllProducts(),
    @required TResult getAllProducts(),
    @required TResult getByCategory(String category),
    @required TResult getByProductID(String productID),
  }) {
    assert(watchAllProducts != null);
    assert(getAllProducts != null);
    assert(getByCategory != null);
    assert(getByProductID != null);
    return watchAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllProducts(),
    TResult getAllProducts(),
    TResult getByCategory(String category),
    TResult getByProductID(String productID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllProducts != null) {
      return watchAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllProducts(_WatchAllProducts value),
    @required TResult getAllProducts(_GetAllProducts value),
    @required TResult getByCategory(_GetByCategory value),
    @required TResult getByProductID(_GetByProductID value),
  }) {
    assert(watchAllProducts != null);
    assert(getAllProducts != null);
    assert(getByCategory != null);
    assert(getByProductID != null);
    return watchAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllProducts(_WatchAllProducts value),
    TResult getAllProducts(_GetAllProducts value),
    TResult getByCategory(_GetByCategory value),
    TResult getByProductID(_GetByProductID value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllProducts != null) {
      return watchAllProducts(this);
    }
    return orElse();
  }
}

abstract class _WatchAllProducts implements ProductLoaderEvent {
  const factory _WatchAllProducts() = _$_WatchAllProducts;
}

/// @nodoc
abstract class _$GetAllProductsCopyWith<$Res> {
  factory _$GetAllProductsCopyWith(
          _GetAllProducts value, $Res Function(_GetAllProducts) then) =
      __$GetAllProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllProductsCopyWithImpl<$Res>
    extends _$ProductLoaderEventCopyWithImpl<$Res>
    implements _$GetAllProductsCopyWith<$Res> {
  __$GetAllProductsCopyWithImpl(
      _GetAllProducts _value, $Res Function(_GetAllProducts) _then)
      : super(_value, (v) => _then(v as _GetAllProducts));

  @override
  _GetAllProducts get _value => super._value as _GetAllProducts;
}

/// @nodoc
class _$_GetAllProducts implements _GetAllProducts {
  const _$_GetAllProducts();

  @override
  String toString() {
    return 'ProductLoaderEvent.getAllProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllProducts(),
    @required TResult getAllProducts(),
    @required TResult getByCategory(String category),
    @required TResult getByProductID(String productID),
  }) {
    assert(watchAllProducts != null);
    assert(getAllProducts != null);
    assert(getByCategory != null);
    assert(getByProductID != null);
    return getAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllProducts(),
    TResult getAllProducts(),
    TResult getByCategory(String category),
    TResult getByProductID(String productID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllProducts != null) {
      return getAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllProducts(_WatchAllProducts value),
    @required TResult getAllProducts(_GetAllProducts value),
    @required TResult getByCategory(_GetByCategory value),
    @required TResult getByProductID(_GetByProductID value),
  }) {
    assert(watchAllProducts != null);
    assert(getAllProducts != null);
    assert(getByCategory != null);
    assert(getByProductID != null);
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllProducts(_WatchAllProducts value),
    TResult getAllProducts(_GetAllProducts value),
    TResult getByCategory(_GetByCategory value),
    TResult getByProductID(_GetByProductID value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class _GetAllProducts implements ProductLoaderEvent {
  const factory _GetAllProducts() = _$_GetAllProducts;
}

/// @nodoc
abstract class _$GetByCategoryCopyWith<$Res> {
  factory _$GetByCategoryCopyWith(
          _GetByCategory value, $Res Function(_GetByCategory) then) =
      __$GetByCategoryCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class __$GetByCategoryCopyWithImpl<$Res>
    extends _$ProductLoaderEventCopyWithImpl<$Res>
    implements _$GetByCategoryCopyWith<$Res> {
  __$GetByCategoryCopyWithImpl(
      _GetByCategory _value, $Res Function(_GetByCategory) _then)
      : super(_value, (v) => _then(v as _GetByCategory));

  @override
  _GetByCategory get _value => super._value as _GetByCategory;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_GetByCategory(
      category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
class _$_GetByCategory implements _GetByCategory {
  const _$_GetByCategory(this.category) : assert(category != null);

  @override
  final String category;

  @override
  String toString() {
    return 'ProductLoaderEvent.getByCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetByCategory &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$GetByCategoryCopyWith<_GetByCategory> get copyWith =>
      __$GetByCategoryCopyWithImpl<_GetByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllProducts(),
    @required TResult getAllProducts(),
    @required TResult getByCategory(String category),
    @required TResult getByProductID(String productID),
  }) {
    assert(watchAllProducts != null);
    assert(getAllProducts != null);
    assert(getByCategory != null);
    assert(getByProductID != null);
    return getByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllProducts(),
    TResult getAllProducts(),
    TResult getByCategory(String category),
    TResult getByProductID(String productID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getByCategory != null) {
      return getByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllProducts(_WatchAllProducts value),
    @required TResult getAllProducts(_GetAllProducts value),
    @required TResult getByCategory(_GetByCategory value),
    @required TResult getByProductID(_GetByProductID value),
  }) {
    assert(watchAllProducts != null);
    assert(getAllProducts != null);
    assert(getByCategory != null);
    assert(getByProductID != null);
    return getByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllProducts(_WatchAllProducts value),
    TResult getAllProducts(_GetAllProducts value),
    TResult getByCategory(_GetByCategory value),
    TResult getByProductID(_GetByProductID value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getByCategory != null) {
      return getByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetByCategory implements ProductLoaderEvent {
  const factory _GetByCategory(String category) = _$_GetByCategory;

  String get category;
  _$GetByCategoryCopyWith<_GetByCategory> get copyWith;
}

/// @nodoc
abstract class _$GetByProductIDCopyWith<$Res> {
  factory _$GetByProductIDCopyWith(
          _GetByProductID value, $Res Function(_GetByProductID) then) =
      __$GetByProductIDCopyWithImpl<$Res>;
  $Res call({String productID});
}

/// @nodoc
class __$GetByProductIDCopyWithImpl<$Res>
    extends _$ProductLoaderEventCopyWithImpl<$Res>
    implements _$GetByProductIDCopyWith<$Res> {
  __$GetByProductIDCopyWithImpl(
      _GetByProductID _value, $Res Function(_GetByProductID) _then)
      : super(_value, (v) => _then(v as _GetByProductID));

  @override
  _GetByProductID get _value => super._value as _GetByProductID;

  @override
  $Res call({
    Object productID = freezed,
  }) {
    return _then(_GetByProductID(
      productID == freezed ? _value.productID : productID as String,
    ));
  }
}

/// @nodoc
class _$_GetByProductID implements _GetByProductID {
  const _$_GetByProductID(this.productID) : assert(productID != null);

  @override
  final String productID;

  @override
  String toString() {
    return 'ProductLoaderEvent.getByProductID(productID: $productID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetByProductID &&
            (identical(other.productID, productID) ||
                const DeepCollectionEquality()
                    .equals(other.productID, productID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productID);

  @override
  _$GetByProductIDCopyWith<_GetByProductID> get copyWith =>
      __$GetByProductIDCopyWithImpl<_GetByProductID>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllProducts(),
    @required TResult getAllProducts(),
    @required TResult getByCategory(String category),
    @required TResult getByProductID(String productID),
  }) {
    assert(watchAllProducts != null);
    assert(getAllProducts != null);
    assert(getByCategory != null);
    assert(getByProductID != null);
    return getByProductID(productID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllProducts(),
    TResult getAllProducts(),
    TResult getByCategory(String category),
    TResult getByProductID(String productID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getByProductID != null) {
      return getByProductID(productID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllProducts(_WatchAllProducts value),
    @required TResult getAllProducts(_GetAllProducts value),
    @required TResult getByCategory(_GetByCategory value),
    @required TResult getByProductID(_GetByProductID value),
  }) {
    assert(watchAllProducts != null);
    assert(getAllProducts != null);
    assert(getByCategory != null);
    assert(getByProductID != null);
    return getByProductID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllProducts(_WatchAllProducts value),
    TResult getAllProducts(_GetAllProducts value),
    TResult getByCategory(_GetByCategory value),
    TResult getByProductID(_GetByProductID value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getByProductID != null) {
      return getByProductID(this);
    }
    return orElse();
  }
}

abstract class _GetByProductID implements ProductLoaderEvent {
  const factory _GetByProductID(String productID) = _$_GetByProductID;

  String get productID;
  _$GetByProductIDCopyWith<_GetByProductID> get copyWith;
}

/// @nodoc
class _$ProductLoaderStateTearOff {
  const _$ProductLoaderStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadingProducts loadingProducts() {
    return const _LoadingProducts();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<FSProduct> products) {
    return _LoadSuccess(
      products,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ProductFailure productFailure) {
    return _LoadFailure(
      productFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductLoaderState = _$ProductLoaderStateTearOff();

/// @nodoc
mixin _$ProductLoaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingProducts(),
    @required TResult loadSuccess(List<FSProduct> products),
    @required TResult loadFailure(ProductFailure productFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingProducts(),
    TResult loadSuccess(List<FSProduct> products),
    TResult loadFailure(ProductFailure productFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingProducts(_LoadingProducts value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingProducts(_LoadingProducts value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductLoaderStateCopyWith<$Res> {
  factory $ProductLoaderStateCopyWith(
          ProductLoaderState value, $Res Function(ProductLoaderState) then) =
      _$ProductLoaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductLoaderStateCopyWithImpl<$Res>
    implements $ProductLoaderStateCopyWith<$Res> {
  _$ProductLoaderStateCopyWithImpl(this._value, this._then);

  final ProductLoaderState _value;
  // ignore: unused_field
  final $Res Function(ProductLoaderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ProductLoaderStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductLoaderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingProducts(),
    @required TResult loadSuccess(List<FSProduct> products),
    @required TResult loadFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(loadingProducts != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingProducts(),
    TResult loadSuccess(List<FSProduct> products),
    TResult loadFailure(ProductFailure productFailure),
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
    @required TResult initial(_Initial value),
    @required TResult loadingProducts(_LoadingProducts value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingProducts != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingProducts(_LoadingProducts value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductLoaderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingProductsCopyWith<$Res> {
  factory _$LoadingProductsCopyWith(
          _LoadingProducts value, $Res Function(_LoadingProducts) then) =
      __$LoadingProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingProductsCopyWithImpl<$Res>
    extends _$ProductLoaderStateCopyWithImpl<$Res>
    implements _$LoadingProductsCopyWith<$Res> {
  __$LoadingProductsCopyWithImpl(
      _LoadingProducts _value, $Res Function(_LoadingProducts) _then)
      : super(_value, (v) => _then(v as _LoadingProducts));

  @override
  _LoadingProducts get _value => super._value as _LoadingProducts;
}

/// @nodoc
class _$_LoadingProducts implements _LoadingProducts {
  const _$_LoadingProducts();

  @override
  String toString() {
    return 'ProductLoaderState.loadingProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingProducts(),
    @required TResult loadSuccess(List<FSProduct> products),
    @required TResult loadFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(loadingProducts != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadingProducts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingProducts(),
    TResult loadSuccess(List<FSProduct> products),
    TResult loadFailure(ProductFailure productFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingProducts != null) {
      return loadingProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingProducts(_LoadingProducts value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingProducts != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadingProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingProducts(_LoadingProducts value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingProducts != null) {
      return loadingProducts(this);
    }
    return orElse();
  }
}

abstract class _LoadingProducts implements ProductLoaderState {
  const factory _LoadingProducts() = _$_LoadingProducts;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<FSProduct> products});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ProductLoaderStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object products = freezed,
  }) {
    return _then(_LoadSuccess(
      products == freezed ? _value.products : products as List<FSProduct>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.products) : assert(products != null);

  @override
  final List<FSProduct> products;

  @override
  String toString() {
    return 'ProductLoaderState.loadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingProducts(),
    @required TResult loadSuccess(List<FSProduct> products),
    @required TResult loadFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(loadingProducts != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingProducts(),
    TResult loadSuccess(List<FSProduct> products),
    TResult loadFailure(ProductFailure productFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingProducts(_LoadingProducts value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingProducts != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingProducts(_LoadingProducts value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ProductLoaderState {
  const factory _LoadSuccess(List<FSProduct> products) = _$_LoadSuccess;

  List<FSProduct> get products;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ProductFailure productFailure});

  $ProductFailureCopyWith<$Res> get productFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ProductLoaderStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object productFailure = freezed,
  }) {
    return _then(_LoadFailure(
      productFailure == freezed
          ? _value.productFailure
          : productFailure as ProductFailure,
    ));
  }

  @override
  $ProductFailureCopyWith<$Res> get productFailure {
    if (_value.productFailure == null) {
      return null;
    }
    return $ProductFailureCopyWith<$Res>(_value.productFailure, (value) {
      return _then(_value.copyWith(productFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.productFailure) : assert(productFailure != null);

  @override
  final ProductFailure productFailure;

  @override
  String toString() {
    return 'ProductLoaderState.loadFailure(productFailure: $productFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.productFailure, productFailure) ||
                const DeepCollectionEquality()
                    .equals(other.productFailure, productFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadingProducts(),
    @required TResult loadSuccess(List<FSProduct> products),
    @required TResult loadFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(loadingProducts != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(productFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadingProducts(),
    TResult loadSuccess(List<FSProduct> products),
    TResult loadFailure(ProductFailure productFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(productFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadingProducts(_LoadingProducts value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingProducts != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadingProducts(_LoadingProducts value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProductLoaderState {
  const factory _LoadFailure(ProductFailure productFailure) = _$_LoadFailure;

  ProductFailure get productFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
