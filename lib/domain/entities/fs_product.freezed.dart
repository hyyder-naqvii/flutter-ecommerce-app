// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fs_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FSProductTearOff {
  const _$FSProductTearOff();

// ignore: unused_element
  _FSProduct call(
      {@required UniqueID uID,
      @required ProductName productName,
      @required ProductDescription productDescription,
      @required ProductPrice productPrice,
      @required String productImageURL,
      @required String category}) {
    return _FSProduct(
      uID: uID,
      productName: productName,
      productDescription: productDescription,
      productPrice: productPrice,
      productImageURL: productImageURL,
      category: category,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FSProduct = _$FSProductTearOff();

/// @nodoc
mixin _$FSProduct {
  UniqueID get uID;
  ProductName get productName;
  ProductDescription get productDescription;
  ProductPrice get productPrice;
  String get productImageURL;
  String get category;

  @JsonKey(ignore: true)
  $FSProductCopyWith<FSProduct> get copyWith;
}

/// @nodoc
abstract class $FSProductCopyWith<$Res> {
  factory $FSProductCopyWith(FSProduct value, $Res Function(FSProduct) then) =
      _$FSProductCopyWithImpl<$Res>;
  $Res call(
      {UniqueID uID,
      ProductName productName,
      ProductDescription productDescription,
      ProductPrice productPrice,
      String productImageURL,
      String category});
}

/// @nodoc
class _$FSProductCopyWithImpl<$Res> implements $FSProductCopyWith<$Res> {
  _$FSProductCopyWithImpl(this._value, this._then);

  final FSProduct _value;
  // ignore: unused_field
  final $Res Function(FSProduct) _then;

  @override
  $Res call({
    Object uID = freezed,
    Object productName = freezed,
    Object productDescription = freezed,
    Object productPrice = freezed,
    Object productImageURL = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      uID: uID == freezed ? _value.uID : uID as UniqueID,
      productName: productName == freezed
          ? _value.productName
          : productName as ProductName,
      productDescription: productDescription == freezed
          ? _value.productDescription
          : productDescription as ProductDescription,
      productPrice: productPrice == freezed
          ? _value.productPrice
          : productPrice as ProductPrice,
      productImageURL: productImageURL == freezed
          ? _value.productImageURL
          : productImageURL as String,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
abstract class _$FSProductCopyWith<$Res> implements $FSProductCopyWith<$Res> {
  factory _$FSProductCopyWith(
          _FSProduct value, $Res Function(_FSProduct) then) =
      __$FSProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueID uID,
      ProductName productName,
      ProductDescription productDescription,
      ProductPrice productPrice,
      String productImageURL,
      String category});
}

/// @nodoc
class __$FSProductCopyWithImpl<$Res> extends _$FSProductCopyWithImpl<$Res>
    implements _$FSProductCopyWith<$Res> {
  __$FSProductCopyWithImpl(_FSProduct _value, $Res Function(_FSProduct) _then)
      : super(_value, (v) => _then(v as _FSProduct));

  @override
  _FSProduct get _value => super._value as _FSProduct;

  @override
  $Res call({
    Object uID = freezed,
    Object productName = freezed,
    Object productDescription = freezed,
    Object productPrice = freezed,
    Object productImageURL = freezed,
    Object category = freezed,
  }) {
    return _then(_FSProduct(
      uID: uID == freezed ? _value.uID : uID as UniqueID,
      productName: productName == freezed
          ? _value.productName
          : productName as ProductName,
      productDescription: productDescription == freezed
          ? _value.productDescription
          : productDescription as ProductDescription,
      productPrice: productPrice == freezed
          ? _value.productPrice
          : productPrice as ProductPrice,
      productImageURL: productImageURL == freezed
          ? _value.productImageURL
          : productImageURL as String,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
class _$_FSProduct extends _FSProduct {
  const _$_FSProduct(
      {@required this.uID,
      @required this.productName,
      @required this.productDescription,
      @required this.productPrice,
      @required this.productImageURL,
      @required this.category})
      : assert(uID != null),
        assert(productName != null),
        assert(productDescription != null),
        assert(productPrice != null),
        assert(productImageURL != null),
        assert(category != null),
        super._();

  @override
  final UniqueID uID;
  @override
  final ProductName productName;
  @override
  final ProductDescription productDescription;
  @override
  final ProductPrice productPrice;
  @override
  final String productImageURL;
  @override
  final String category;

  @override
  String toString() {
    return 'FSProduct(uID: $uID, productName: $productName, productDescription: $productDescription, productPrice: $productPrice, productImageURL: $productImageURL, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FSProduct &&
            (identical(other.uID, uID) ||
                const DeepCollectionEquality().equals(other.uID, uID)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productDescription, productDescription) ||
                const DeepCollectionEquality()
                    .equals(other.productDescription, productDescription)) &&
            (identical(other.productPrice, productPrice) ||
                const DeepCollectionEquality()
                    .equals(other.productPrice, productPrice)) &&
            (identical(other.productImageURL, productImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.productImageURL, productImageURL)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uID) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productDescription) ^
      const DeepCollectionEquality().hash(productPrice) ^
      const DeepCollectionEquality().hash(productImageURL) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$FSProductCopyWith<_FSProduct> get copyWith =>
      __$FSProductCopyWithImpl<_FSProduct>(this, _$identity);
}

abstract class _FSProduct extends FSProduct {
  const _FSProduct._() : super._();
  const factory _FSProduct(
      {@required UniqueID uID,
      @required ProductName productName,
      @required ProductDescription productDescription,
      @required ProductPrice productPrice,
      @required String productImageURL,
      @required String category}) = _$_FSProduct;

  @override
  UniqueID get uID;
  @override
  ProductName get productName;
  @override
  ProductDescription get productDescription;
  @override
  ProductPrice get productPrice;
  @override
  String get productImageURL;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$FSProductCopyWith<_FSProduct> get copyWith;
}
