// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductFormEventTearOff {
  const _$ProductFormEventTearOff();

// ignore: unused_element
  _InitializeProduct initializeProduct(Option<FSProduct> product) {
    return _InitializeProduct(
      product,
    );
  }

// ignore: unused_element
  _ProductNameChanged productNameChanged(String productName) {
    return _ProductNameChanged(
      productName,
    );
  }

// ignore: unused_element
  _ProductCategoryChanged productCategoryChanged(String productCategory) {
    return _ProductCategoryChanged(
      productCategory,
    );
  }

// ignore: unused_element
  _ProductDescriptionChanged productDescriptionChanged(
      String productDescription) {
    return _ProductDescriptionChanged(
      productDescription,
    );
  }

// ignore: unused_element
  _ProductPriceChanged productPriceChanged(String productPrice) {
    return _ProductPriceChanged(
      productPrice,
    );
  }

// ignore: unused_element
  _ProductImageChanged productImageChanged({@required bool removeInstead}) {
    return _ProductImageChanged(
      removeInstead: removeInstead,
    );
  }

// ignore: unused_element
  _AddProduct addProduct() {
    return const _AddProduct();
  }
}

/// @nodoc
// ignore: unused_element
const $ProductFormEvent = _$ProductFormEventTearOff();

/// @nodoc
mixin _$ProductFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializeProduct(Option<FSProduct> product),
    @required TResult productNameChanged(String productName),
    @required TResult productCategoryChanged(String productCategory),
    @required TResult productDescriptionChanged(String productDescription),
    @required TResult productPriceChanged(String productPrice),
    @required TResult productImageChanged(bool removeInstead),
    @required TResult addProduct(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializeProduct(Option<FSProduct> product),
    TResult productNameChanged(String productName),
    TResult productCategoryChanged(String productCategory),
    TResult productDescriptionChanged(String productDescription),
    TResult productPriceChanged(String productPrice),
    TResult productImageChanged(bool removeInstead),
    TResult addProduct(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializeProduct(_InitializeProduct value),
    @required TResult productNameChanged(_ProductNameChanged value),
    @required TResult productCategoryChanged(_ProductCategoryChanged value),
    @required
        TResult productDescriptionChanged(_ProductDescriptionChanged value),
    @required TResult productPriceChanged(_ProductPriceChanged value),
    @required TResult productImageChanged(_ProductImageChanged value),
    @required TResult addProduct(_AddProduct value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializeProduct(_InitializeProduct value),
    TResult productNameChanged(_ProductNameChanged value),
    TResult productCategoryChanged(_ProductCategoryChanged value),
    TResult productDescriptionChanged(_ProductDescriptionChanged value),
    TResult productPriceChanged(_ProductPriceChanged value),
    TResult productImageChanged(_ProductImageChanged value),
    TResult addProduct(_AddProduct value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProductFormEventCopyWith<$Res> {
  factory $ProductFormEventCopyWith(
          ProductFormEvent value, $Res Function(ProductFormEvent) then) =
      _$ProductFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductFormEventCopyWithImpl<$Res>
    implements $ProductFormEventCopyWith<$Res> {
  _$ProductFormEventCopyWithImpl(this._value, this._then);

  final ProductFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProductFormEvent) _then;
}

/// @nodoc
abstract class _$InitializeProductCopyWith<$Res> {
  factory _$InitializeProductCopyWith(
          _InitializeProduct value, $Res Function(_InitializeProduct) then) =
      __$InitializeProductCopyWithImpl<$Res>;
  $Res call({Option<FSProduct> product});
}

/// @nodoc
class __$InitializeProductCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$InitializeProductCopyWith<$Res> {
  __$InitializeProductCopyWithImpl(
      _InitializeProduct _value, $Res Function(_InitializeProduct) _then)
      : super(_value, (v) => _then(v as _InitializeProduct));

  @override
  _InitializeProduct get _value => super._value as _InitializeProduct;

  @override
  $Res call({
    Object product = freezed,
  }) {
    return _then(_InitializeProduct(
      product == freezed ? _value.product : product as Option<FSProduct>,
    ));
  }
}

/// @nodoc
class _$_InitializeProduct implements _InitializeProduct {
  const _$_InitializeProduct(this.product) : assert(product != null);

  @override
  final Option<FSProduct> product;

  @override
  String toString() {
    return 'ProductFormEvent.initializeProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitializeProduct &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  _$InitializeProductCopyWith<_InitializeProduct> get copyWith =>
      __$InitializeProductCopyWithImpl<_InitializeProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializeProduct(Option<FSProduct> product),
    @required TResult productNameChanged(String productName),
    @required TResult productCategoryChanged(String productCategory),
    @required TResult productDescriptionChanged(String productDescription),
    @required TResult productPriceChanged(String productPrice),
    @required TResult productImageChanged(bool removeInstead),
    @required TResult addProduct(),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return initializeProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializeProduct(Option<FSProduct> product),
    TResult productNameChanged(String productName),
    TResult productCategoryChanged(String productCategory),
    TResult productDescriptionChanged(String productDescription),
    TResult productPriceChanged(String productPrice),
    TResult productImageChanged(bool removeInstead),
    TResult addProduct(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializeProduct != null) {
      return initializeProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializeProduct(_InitializeProduct value),
    @required TResult productNameChanged(_ProductNameChanged value),
    @required TResult productCategoryChanged(_ProductCategoryChanged value),
    @required
        TResult productDescriptionChanged(_ProductDescriptionChanged value),
    @required TResult productPriceChanged(_ProductPriceChanged value),
    @required TResult productImageChanged(_ProductImageChanged value),
    @required TResult addProduct(_AddProduct value),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return initializeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializeProduct(_InitializeProduct value),
    TResult productNameChanged(_ProductNameChanged value),
    TResult productCategoryChanged(_ProductCategoryChanged value),
    TResult productDescriptionChanged(_ProductDescriptionChanged value),
    TResult productPriceChanged(_ProductPriceChanged value),
    TResult productImageChanged(_ProductImageChanged value),
    TResult addProduct(_AddProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializeProduct != null) {
      return initializeProduct(this);
    }
    return orElse();
  }
}

abstract class _InitializeProduct implements ProductFormEvent {
  const factory _InitializeProduct(Option<FSProduct> product) =
      _$_InitializeProduct;

  Option<FSProduct> get product;
  @JsonKey(ignore: true)
  _$InitializeProductCopyWith<_InitializeProduct> get copyWith;
}

/// @nodoc
abstract class _$ProductNameChangedCopyWith<$Res> {
  factory _$ProductNameChangedCopyWith(
          _ProductNameChanged value, $Res Function(_ProductNameChanged) then) =
      __$ProductNameChangedCopyWithImpl<$Res>;
  $Res call({String productName});
}

/// @nodoc
class __$ProductNameChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$ProductNameChangedCopyWith<$Res> {
  __$ProductNameChangedCopyWithImpl(
      _ProductNameChanged _value, $Res Function(_ProductNameChanged) _then)
      : super(_value, (v) => _then(v as _ProductNameChanged));

  @override
  _ProductNameChanged get _value => super._value as _ProductNameChanged;

  @override
  $Res call({
    Object productName = freezed,
  }) {
    return _then(_ProductNameChanged(
      productName == freezed ? _value.productName : productName as String,
    ));
  }
}

/// @nodoc
class _$_ProductNameChanged implements _ProductNameChanged {
  const _$_ProductNameChanged(this.productName) : assert(productName != null);

  @override
  final String productName;

  @override
  String toString() {
    return 'ProductFormEvent.productNameChanged(productName: $productName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductNameChanged &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productName);

  @JsonKey(ignore: true)
  @override
  _$ProductNameChangedCopyWith<_ProductNameChanged> get copyWith =>
      __$ProductNameChangedCopyWithImpl<_ProductNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializeProduct(Option<FSProduct> product),
    @required TResult productNameChanged(String productName),
    @required TResult productCategoryChanged(String productCategory),
    @required TResult productDescriptionChanged(String productDescription),
    @required TResult productPriceChanged(String productPrice),
    @required TResult productImageChanged(bool removeInstead),
    @required TResult addProduct(),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productNameChanged(productName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializeProduct(Option<FSProduct> product),
    TResult productNameChanged(String productName),
    TResult productCategoryChanged(String productCategory),
    TResult productDescriptionChanged(String productDescription),
    TResult productPriceChanged(String productPrice),
    TResult productImageChanged(bool removeInstead),
    TResult addProduct(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productNameChanged != null) {
      return productNameChanged(productName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializeProduct(_InitializeProduct value),
    @required TResult productNameChanged(_ProductNameChanged value),
    @required TResult productCategoryChanged(_ProductCategoryChanged value),
    @required
        TResult productDescriptionChanged(_ProductDescriptionChanged value),
    @required TResult productPriceChanged(_ProductPriceChanged value),
    @required TResult productImageChanged(_ProductImageChanged value),
    @required TResult addProduct(_AddProduct value),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializeProduct(_InitializeProduct value),
    TResult productNameChanged(_ProductNameChanged value),
    TResult productCategoryChanged(_ProductCategoryChanged value),
    TResult productDescriptionChanged(_ProductDescriptionChanged value),
    TResult productPriceChanged(_ProductPriceChanged value),
    TResult productImageChanged(_ProductImageChanged value),
    TResult addProduct(_AddProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productNameChanged != null) {
      return productNameChanged(this);
    }
    return orElse();
  }
}

abstract class _ProductNameChanged implements ProductFormEvent {
  const factory _ProductNameChanged(String productName) = _$_ProductNameChanged;

  String get productName;
  @JsonKey(ignore: true)
  _$ProductNameChangedCopyWith<_ProductNameChanged> get copyWith;
}

/// @nodoc
abstract class _$ProductCategoryChangedCopyWith<$Res> {
  factory _$ProductCategoryChangedCopyWith(_ProductCategoryChanged value,
          $Res Function(_ProductCategoryChanged) then) =
      __$ProductCategoryChangedCopyWithImpl<$Res>;
  $Res call({String productCategory});
}

/// @nodoc
class __$ProductCategoryChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$ProductCategoryChangedCopyWith<$Res> {
  __$ProductCategoryChangedCopyWithImpl(_ProductCategoryChanged _value,
      $Res Function(_ProductCategoryChanged) _then)
      : super(_value, (v) => _then(v as _ProductCategoryChanged));

  @override
  _ProductCategoryChanged get _value => super._value as _ProductCategoryChanged;

  @override
  $Res call({
    Object productCategory = freezed,
  }) {
    return _then(_ProductCategoryChanged(
      productCategory == freezed
          ? _value.productCategory
          : productCategory as String,
    ));
  }
}

/// @nodoc
class _$_ProductCategoryChanged implements _ProductCategoryChanged {
  const _$_ProductCategoryChanged(this.productCategory)
      : assert(productCategory != null);

  @override
  final String productCategory;

  @override
  String toString() {
    return 'ProductFormEvent.productCategoryChanged(productCategory: $productCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductCategoryChanged &&
            (identical(other.productCategory, productCategory) ||
                const DeepCollectionEquality()
                    .equals(other.productCategory, productCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productCategory);

  @JsonKey(ignore: true)
  @override
  _$ProductCategoryChangedCopyWith<_ProductCategoryChanged> get copyWith =>
      __$ProductCategoryChangedCopyWithImpl<_ProductCategoryChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializeProduct(Option<FSProduct> product),
    @required TResult productNameChanged(String productName),
    @required TResult productCategoryChanged(String productCategory),
    @required TResult productDescriptionChanged(String productDescription),
    @required TResult productPriceChanged(String productPrice),
    @required TResult productImageChanged(bool removeInstead),
    @required TResult addProduct(),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productCategoryChanged(productCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializeProduct(Option<FSProduct> product),
    TResult productNameChanged(String productName),
    TResult productCategoryChanged(String productCategory),
    TResult productDescriptionChanged(String productDescription),
    TResult productPriceChanged(String productPrice),
    TResult productImageChanged(bool removeInstead),
    TResult addProduct(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productCategoryChanged != null) {
      return productCategoryChanged(productCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializeProduct(_InitializeProduct value),
    @required TResult productNameChanged(_ProductNameChanged value),
    @required TResult productCategoryChanged(_ProductCategoryChanged value),
    @required
        TResult productDescriptionChanged(_ProductDescriptionChanged value),
    @required TResult productPriceChanged(_ProductPriceChanged value),
    @required TResult productImageChanged(_ProductImageChanged value),
    @required TResult addProduct(_AddProduct value),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productCategoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializeProduct(_InitializeProduct value),
    TResult productNameChanged(_ProductNameChanged value),
    TResult productCategoryChanged(_ProductCategoryChanged value),
    TResult productDescriptionChanged(_ProductDescriptionChanged value),
    TResult productPriceChanged(_ProductPriceChanged value),
    TResult productImageChanged(_ProductImageChanged value),
    TResult addProduct(_AddProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productCategoryChanged != null) {
      return productCategoryChanged(this);
    }
    return orElse();
  }
}

abstract class _ProductCategoryChanged implements ProductFormEvent {
  const factory _ProductCategoryChanged(String productCategory) =
      _$_ProductCategoryChanged;

  String get productCategory;
  @JsonKey(ignore: true)
  _$ProductCategoryChangedCopyWith<_ProductCategoryChanged> get copyWith;
}

/// @nodoc
abstract class _$ProductDescriptionChangedCopyWith<$Res> {
  factory _$ProductDescriptionChangedCopyWith(_ProductDescriptionChanged value,
          $Res Function(_ProductDescriptionChanged) then) =
      __$ProductDescriptionChangedCopyWithImpl<$Res>;
  $Res call({String productDescription});
}

/// @nodoc
class __$ProductDescriptionChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$ProductDescriptionChangedCopyWith<$Res> {
  __$ProductDescriptionChangedCopyWithImpl(_ProductDescriptionChanged _value,
      $Res Function(_ProductDescriptionChanged) _then)
      : super(_value, (v) => _then(v as _ProductDescriptionChanged));

  @override
  _ProductDescriptionChanged get _value =>
      super._value as _ProductDescriptionChanged;

  @override
  $Res call({
    Object productDescription = freezed,
  }) {
    return _then(_ProductDescriptionChanged(
      productDescription == freezed
          ? _value.productDescription
          : productDescription as String,
    ));
  }
}

/// @nodoc
class _$_ProductDescriptionChanged implements _ProductDescriptionChanged {
  const _$_ProductDescriptionChanged(this.productDescription)
      : assert(productDescription != null);

  @override
  final String productDescription;

  @override
  String toString() {
    return 'ProductFormEvent.productDescriptionChanged(productDescription: $productDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDescriptionChanged &&
            (identical(other.productDescription, productDescription) ||
                const DeepCollectionEquality()
                    .equals(other.productDescription, productDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productDescription);

  @JsonKey(ignore: true)
  @override
  _$ProductDescriptionChangedCopyWith<_ProductDescriptionChanged>
      get copyWith =>
          __$ProductDescriptionChangedCopyWithImpl<_ProductDescriptionChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializeProduct(Option<FSProduct> product),
    @required TResult productNameChanged(String productName),
    @required TResult productCategoryChanged(String productCategory),
    @required TResult productDescriptionChanged(String productDescription),
    @required TResult productPriceChanged(String productPrice),
    @required TResult productImageChanged(bool removeInstead),
    @required TResult addProduct(),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productDescriptionChanged(productDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializeProduct(Option<FSProduct> product),
    TResult productNameChanged(String productName),
    TResult productCategoryChanged(String productCategory),
    TResult productDescriptionChanged(String productDescription),
    TResult productPriceChanged(String productPrice),
    TResult productImageChanged(bool removeInstead),
    TResult addProduct(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productDescriptionChanged != null) {
      return productDescriptionChanged(productDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializeProduct(_InitializeProduct value),
    @required TResult productNameChanged(_ProductNameChanged value),
    @required TResult productCategoryChanged(_ProductCategoryChanged value),
    @required
        TResult productDescriptionChanged(_ProductDescriptionChanged value),
    @required TResult productPriceChanged(_ProductPriceChanged value),
    @required TResult productImageChanged(_ProductImageChanged value),
    @required TResult addProduct(_AddProduct value),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializeProduct(_InitializeProduct value),
    TResult productNameChanged(_ProductNameChanged value),
    TResult productCategoryChanged(_ProductCategoryChanged value),
    TResult productDescriptionChanged(_ProductDescriptionChanged value),
    TResult productPriceChanged(_ProductPriceChanged value),
    TResult productImageChanged(_ProductImageChanged value),
    TResult addProduct(_AddProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productDescriptionChanged != null) {
      return productDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _ProductDescriptionChanged implements ProductFormEvent {
  const factory _ProductDescriptionChanged(String productDescription) =
      _$_ProductDescriptionChanged;

  String get productDescription;
  @JsonKey(ignore: true)
  _$ProductDescriptionChangedCopyWith<_ProductDescriptionChanged> get copyWith;
}

/// @nodoc
abstract class _$ProductPriceChangedCopyWith<$Res> {
  factory _$ProductPriceChangedCopyWith(_ProductPriceChanged value,
          $Res Function(_ProductPriceChanged) then) =
      __$ProductPriceChangedCopyWithImpl<$Res>;
  $Res call({String productPrice});
}

/// @nodoc
class __$ProductPriceChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$ProductPriceChangedCopyWith<$Res> {
  __$ProductPriceChangedCopyWithImpl(
      _ProductPriceChanged _value, $Res Function(_ProductPriceChanged) _then)
      : super(_value, (v) => _then(v as _ProductPriceChanged));

  @override
  _ProductPriceChanged get _value => super._value as _ProductPriceChanged;

  @override
  $Res call({
    Object productPrice = freezed,
  }) {
    return _then(_ProductPriceChanged(
      productPrice == freezed ? _value.productPrice : productPrice as String,
    ));
  }
}

/// @nodoc
class _$_ProductPriceChanged implements _ProductPriceChanged {
  const _$_ProductPriceChanged(this.productPrice)
      : assert(productPrice != null);

  @override
  final String productPrice;

  @override
  String toString() {
    return 'ProductFormEvent.productPriceChanged(productPrice: $productPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductPriceChanged &&
            (identical(other.productPrice, productPrice) ||
                const DeepCollectionEquality()
                    .equals(other.productPrice, productPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productPrice);

  @JsonKey(ignore: true)
  @override
  _$ProductPriceChangedCopyWith<_ProductPriceChanged> get copyWith =>
      __$ProductPriceChangedCopyWithImpl<_ProductPriceChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializeProduct(Option<FSProduct> product),
    @required TResult productNameChanged(String productName),
    @required TResult productCategoryChanged(String productCategory),
    @required TResult productDescriptionChanged(String productDescription),
    @required TResult productPriceChanged(String productPrice),
    @required TResult productImageChanged(bool removeInstead),
    @required TResult addProduct(),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productPriceChanged(productPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializeProduct(Option<FSProduct> product),
    TResult productNameChanged(String productName),
    TResult productCategoryChanged(String productCategory),
    TResult productDescriptionChanged(String productDescription),
    TResult productPriceChanged(String productPrice),
    TResult productImageChanged(bool removeInstead),
    TResult addProduct(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productPriceChanged != null) {
      return productPriceChanged(productPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializeProduct(_InitializeProduct value),
    @required TResult productNameChanged(_ProductNameChanged value),
    @required TResult productCategoryChanged(_ProductCategoryChanged value),
    @required
        TResult productDescriptionChanged(_ProductDescriptionChanged value),
    @required TResult productPriceChanged(_ProductPriceChanged value),
    @required TResult productImageChanged(_ProductImageChanged value),
    @required TResult addProduct(_AddProduct value),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productPriceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializeProduct(_InitializeProduct value),
    TResult productNameChanged(_ProductNameChanged value),
    TResult productCategoryChanged(_ProductCategoryChanged value),
    TResult productDescriptionChanged(_ProductDescriptionChanged value),
    TResult productPriceChanged(_ProductPriceChanged value),
    TResult productImageChanged(_ProductImageChanged value),
    TResult addProduct(_AddProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productPriceChanged != null) {
      return productPriceChanged(this);
    }
    return orElse();
  }
}

abstract class _ProductPriceChanged implements ProductFormEvent {
  const factory _ProductPriceChanged(String productPrice) =
      _$_ProductPriceChanged;

  String get productPrice;
  @JsonKey(ignore: true)
  _$ProductPriceChangedCopyWith<_ProductPriceChanged> get copyWith;
}

/// @nodoc
abstract class _$ProductImageChangedCopyWith<$Res> {
  factory _$ProductImageChangedCopyWith(_ProductImageChanged value,
          $Res Function(_ProductImageChanged) then) =
      __$ProductImageChangedCopyWithImpl<$Res>;
  $Res call({bool removeInstead});
}

/// @nodoc
class __$ProductImageChangedCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$ProductImageChangedCopyWith<$Res> {
  __$ProductImageChangedCopyWithImpl(
      _ProductImageChanged _value, $Res Function(_ProductImageChanged) _then)
      : super(_value, (v) => _then(v as _ProductImageChanged));

  @override
  _ProductImageChanged get _value => super._value as _ProductImageChanged;

  @override
  $Res call({
    Object removeInstead = freezed,
  }) {
    return _then(_ProductImageChanged(
      removeInstead: removeInstead == freezed
          ? _value.removeInstead
          : removeInstead as bool,
    ));
  }
}

/// @nodoc
class _$_ProductImageChanged implements _ProductImageChanged {
  const _$_ProductImageChanged({@required this.removeInstead})
      : assert(removeInstead != null);

  @override
  final bool removeInstead;

  @override
  String toString() {
    return 'ProductFormEvent.productImageChanged(removeInstead: $removeInstead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductImageChanged &&
            (identical(other.removeInstead, removeInstead) ||
                const DeepCollectionEquality()
                    .equals(other.removeInstead, removeInstead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(removeInstead);

  @JsonKey(ignore: true)
  @override
  _$ProductImageChangedCopyWith<_ProductImageChanged> get copyWith =>
      __$ProductImageChangedCopyWithImpl<_ProductImageChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializeProduct(Option<FSProduct> product),
    @required TResult productNameChanged(String productName),
    @required TResult productCategoryChanged(String productCategory),
    @required TResult productDescriptionChanged(String productDescription),
    @required TResult productPriceChanged(String productPrice),
    @required TResult productImageChanged(bool removeInstead),
    @required TResult addProduct(),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productImageChanged(removeInstead);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializeProduct(Option<FSProduct> product),
    TResult productNameChanged(String productName),
    TResult productCategoryChanged(String productCategory),
    TResult productDescriptionChanged(String productDescription),
    TResult productPriceChanged(String productPrice),
    TResult productImageChanged(bool removeInstead),
    TResult addProduct(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productImageChanged != null) {
      return productImageChanged(removeInstead);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializeProduct(_InitializeProduct value),
    @required TResult productNameChanged(_ProductNameChanged value),
    @required TResult productCategoryChanged(_ProductCategoryChanged value),
    @required
        TResult productDescriptionChanged(_ProductDescriptionChanged value),
    @required TResult productPriceChanged(_ProductPriceChanged value),
    @required TResult productImageChanged(_ProductImageChanged value),
    @required TResult addProduct(_AddProduct value),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return productImageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializeProduct(_InitializeProduct value),
    TResult productNameChanged(_ProductNameChanged value),
    TResult productCategoryChanged(_ProductCategoryChanged value),
    TResult productDescriptionChanged(_ProductDescriptionChanged value),
    TResult productPriceChanged(_ProductPriceChanged value),
    TResult productImageChanged(_ProductImageChanged value),
    TResult addProduct(_AddProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (productImageChanged != null) {
      return productImageChanged(this);
    }
    return orElse();
  }
}

abstract class _ProductImageChanged implements ProductFormEvent {
  const factory _ProductImageChanged({@required bool removeInstead}) =
      _$_ProductImageChanged;

  bool get removeInstead;
  @JsonKey(ignore: true)
  _$ProductImageChangedCopyWith<_ProductImageChanged> get copyWith;
}

/// @nodoc
abstract class _$AddProductCopyWith<$Res> {
  factory _$AddProductCopyWith(
          _AddProduct value, $Res Function(_AddProduct) then) =
      __$AddProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddProductCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$AddProductCopyWith<$Res> {
  __$AddProductCopyWithImpl(
      _AddProduct _value, $Res Function(_AddProduct) _then)
      : super(_value, (v) => _then(v as _AddProduct));

  @override
  _AddProduct get _value => super._value as _AddProduct;
}

/// @nodoc
class _$_AddProduct implements _AddProduct {
  const _$_AddProduct();

  @override
  String toString() {
    return 'ProductFormEvent.addProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializeProduct(Option<FSProduct> product),
    @required TResult productNameChanged(String productName),
    @required TResult productCategoryChanged(String productCategory),
    @required TResult productDescriptionChanged(String productDescription),
    @required TResult productPriceChanged(String productPrice),
    @required TResult productImageChanged(bool removeInstead),
    @required TResult addProduct(),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return addProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializeProduct(Option<FSProduct> product),
    TResult productNameChanged(String productName),
    TResult productCategoryChanged(String productCategory),
    TResult productDescriptionChanged(String productDescription),
    TResult productPriceChanged(String productPrice),
    TResult productImageChanged(bool removeInstead),
    TResult addProduct(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProduct != null) {
      return addProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializeProduct(_InitializeProduct value),
    @required TResult productNameChanged(_ProductNameChanged value),
    @required TResult productCategoryChanged(_ProductCategoryChanged value),
    @required
        TResult productDescriptionChanged(_ProductDescriptionChanged value),
    @required TResult productPriceChanged(_ProductPriceChanged value),
    @required TResult productImageChanged(_ProductImageChanged value),
    @required TResult addProduct(_AddProduct value),
  }) {
    assert(initializeProduct != null);
    assert(productNameChanged != null);
    assert(productCategoryChanged != null);
    assert(productDescriptionChanged != null);
    assert(productPriceChanged != null);
    assert(productImageChanged != null);
    assert(addProduct != null);
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializeProduct(_InitializeProduct value),
    TResult productNameChanged(_ProductNameChanged value),
    TResult productCategoryChanged(_ProductCategoryChanged value),
    TResult productDescriptionChanged(_ProductDescriptionChanged value),
    TResult productPriceChanged(_ProductPriceChanged value),
    TResult productImageChanged(_ProductImageChanged value),
    TResult addProduct(_AddProduct value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements ProductFormEvent {
  const factory _AddProduct() = _$_AddProduct;
}

/// @nodoc
class _$ProductFormStateTearOff {
  const _$ProductFormStateTearOff();

// ignore: unused_element
  _ProductFormState call(
      {@required FSProduct product,
      @required Uint8List image,
      @required bool showErrorMessages,
      @required bool isSaving,
      @required bool isEditing,
      @required bool saved,
      @required Option<Either<ProductFailure, Unit>> productStateOption}) {
    return _ProductFormState(
      product: product,
      image: image,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      isEditing: isEditing,
      saved: saved,
      productStateOption: productStateOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProductFormState = _$ProductFormStateTearOff();

/// @nodoc
mixin _$ProductFormState {
  FSProduct get product;
  Uint8List get image;
  bool get showErrorMessages;
  bool get isSaving;
  bool get isEditing;
  bool get saved;
  Option<Either<ProductFailure, Unit>> get productStateOption;

  @JsonKey(ignore: true)
  $ProductFormStateCopyWith<ProductFormState> get copyWith;
}

/// @nodoc
abstract class $ProductFormStateCopyWith<$Res> {
  factory $ProductFormStateCopyWith(
          ProductFormState value, $Res Function(ProductFormState) then) =
      _$ProductFormStateCopyWithImpl<$Res>;
  $Res call(
      {FSProduct product,
      Uint8List image,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      bool saved,
      Option<Either<ProductFailure, Unit>> productStateOption});

  $FSProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductFormStateCopyWithImpl<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  _$ProductFormStateCopyWithImpl(this._value, this._then);

  final ProductFormState _value;
  // ignore: unused_field
  final $Res Function(ProductFormState) _then;

  @override
  $Res call({
    Object product = freezed,
    Object image = freezed,
    Object showErrorMessages = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object saved = freezed,
    Object productStateOption = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed ? _value.product : product as FSProduct,
      image: image == freezed ? _value.image : image as Uint8List,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      saved: saved == freezed ? _value.saved : saved as bool,
      productStateOption: productStateOption == freezed
          ? _value.productStateOption
          : productStateOption as Option<Either<ProductFailure, Unit>>,
    ));
  }

  @override
  $FSProductCopyWith<$Res> get product {
    if (_value.product == null) {
      return null;
    }
    return $FSProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$ProductFormStateCopyWith<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  factory _$ProductFormStateCopyWith(
          _ProductFormState value, $Res Function(_ProductFormState) then) =
      __$ProductFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FSProduct product,
      Uint8List image,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      bool saved,
      Option<Either<ProductFailure, Unit>> productStateOption});

  @override
  $FSProductCopyWith<$Res> get product;
}

/// @nodoc
class __$ProductFormStateCopyWithImpl<$Res>
    extends _$ProductFormStateCopyWithImpl<$Res>
    implements _$ProductFormStateCopyWith<$Res> {
  __$ProductFormStateCopyWithImpl(
      _ProductFormState _value, $Res Function(_ProductFormState) _then)
      : super(_value, (v) => _then(v as _ProductFormState));

  @override
  _ProductFormState get _value => super._value as _ProductFormState;

  @override
  $Res call({
    Object product = freezed,
    Object image = freezed,
    Object showErrorMessages = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object saved = freezed,
    Object productStateOption = freezed,
  }) {
    return _then(_ProductFormState(
      product: product == freezed ? _value.product : product as FSProduct,
      image: image == freezed ? _value.image : image as Uint8List,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      saved: saved == freezed ? _value.saved : saved as bool,
      productStateOption: productStateOption == freezed
          ? _value.productStateOption
          : productStateOption as Option<Either<ProductFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ProductFormState implements _ProductFormState {
  const _$_ProductFormState(
      {@required this.product,
      @required this.image,
      @required this.showErrorMessages,
      @required this.isSaving,
      @required this.isEditing,
      @required this.saved,
      @required this.productStateOption})
      : assert(product != null),
        assert(image != null),
        assert(showErrorMessages != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(saved != null),
        assert(productStateOption != null);

  @override
  final FSProduct product;
  @override
  final Uint8List image;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final bool saved;
  @override
  final Option<Either<ProductFailure, Unit>> productStateOption;

  @override
  String toString() {
    return 'ProductFormState(product: $product, image: $image, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, saved: $saved, productStateOption: $productStateOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductFormState &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.productStateOption, productStateOption) ||
                const DeepCollectionEquality()
                    .equals(other.productStateOption, productStateOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(productStateOption);

  @JsonKey(ignore: true)
  @override
  _$ProductFormStateCopyWith<_ProductFormState> get copyWith =>
      __$ProductFormStateCopyWithImpl<_ProductFormState>(this, _$identity);
}

abstract class _ProductFormState implements ProductFormState {
  const factory _ProductFormState(
          {@required FSProduct product,
          @required Uint8List image,
          @required bool showErrorMessages,
          @required bool isSaving,
          @required bool isEditing,
          @required bool saved,
          @required Option<Either<ProductFailure, Unit>> productStateOption}) =
      _$_ProductFormState;

  @override
  FSProduct get product;
  @override
  Uint8List get image;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  bool get saved;
  @override
  Option<Either<ProductFailure, Unit>> get productStateOption;
  @override
  @JsonKey(ignore: true)
  _$ProductFormStateCopyWith<_ProductFormState> get copyWith;
}
