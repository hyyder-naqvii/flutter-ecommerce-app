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
      @required Uint8List productImage,
      @required String category}) {
    return _FSProduct(
      uID: uID,
      productName: productName,
      productDescription: productDescription,
      productPrice: productPrice,
      productImage: productImage,
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
  Uint8List get productImage;
  String get category;

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
      Uint8List productImage,
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
    Object productImage = freezed,
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
      productImage: productImage == freezed
          ? _value.productImage
          : productImage as Uint8List,
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
      Uint8List productImage,
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
    Object productImage = freezed,
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
      productImage: productImage == freezed
          ? _value.productImage
          : productImage as Uint8List,
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
      @required this.productImage,
      @required this.category})
      : assert(uID != null),
        assert(productName != null),
        assert(productDescription != null),
        assert(productPrice != null),
        assert(productImage != null),
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
  final Uint8List productImage;
  @override
  final String category;

  @override
  String toString() {
    return 'FSProduct(uID: $uID, productName: $productName, productDescription: $productDescription, productPrice: $productPrice, productImage: $productImage, category: $category)';
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
            (identical(other.productImage, productImage) ||
                const DeepCollectionEquality()
                    .equals(other.productImage, productImage)) &&
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
      const DeepCollectionEquality().hash(productImage) ^
      const DeepCollectionEquality().hash(category);

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
      @required Uint8List productImage,
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
  Uint8List get productImage;
  @override
  String get category;
  @override
  _$FSProductCopyWith<_FSProduct> get copyWith;
}
