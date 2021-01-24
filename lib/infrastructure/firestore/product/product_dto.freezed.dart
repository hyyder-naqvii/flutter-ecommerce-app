// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FSProductDTO _$FSProductDTOFromJson(Map<String, dynamic> json) {
  return _FSProductDTO.fromJson(json);
}

/// @nodoc
class _$FSProductDTOTearOff {
  const _$FSProductDTOTearOff();

// ignore: unused_element
  _FSProductDTO call(
      {@JsonKey(ignore: true) String id,
      @required String productName,
      @required String productDescription,
      @required String productPrice,
      @required List<int> productImage,
      @required String productCategory}) {
    return _FSProductDTO(
      id: id,
      productName: productName,
      productDescription: productDescription,
      productPrice: productPrice,
      productImage: productImage,
      productCategory: productCategory,
    );
  }

// ignore: unused_element
  FSProductDTO fromJson(Map<String, Object> json) {
    return FSProductDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FSProductDTO = _$FSProductDTOTearOff();

/// @nodoc
mixin _$FSProductDTO {
  @JsonKey(ignore: true)
  String get id;
  String get productName;
  String get productDescription;
  String get productPrice;
  List<int> get productImage;
  String get productCategory;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FSProductDTOCopyWith<FSProductDTO> get copyWith;
}

/// @nodoc
abstract class $FSProductDTOCopyWith<$Res> {
  factory $FSProductDTOCopyWith(
          FSProductDTO value, $Res Function(FSProductDTO) then) =
      _$FSProductDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String productName,
      String productDescription,
      String productPrice,
      List<int> productImage,
      String productCategory});
}

/// @nodoc
class _$FSProductDTOCopyWithImpl<$Res> implements $FSProductDTOCopyWith<$Res> {
  _$FSProductDTOCopyWithImpl(this._value, this._then);

  final FSProductDTO _value;
  // ignore: unused_field
  final $Res Function(FSProductDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object productName = freezed,
    Object productDescription = freezed,
    Object productPrice = freezed,
    Object productImage = freezed,
    Object productCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      productName:
          productName == freezed ? _value.productName : productName as String,
      productDescription: productDescription == freezed
          ? _value.productDescription
          : productDescription as String,
      productPrice: productPrice == freezed
          ? _value.productPrice
          : productPrice as String,
      productImage: productImage == freezed
          ? _value.productImage
          : productImage as List<int>,
      productCategory: productCategory == freezed
          ? _value.productCategory
          : productCategory as String,
    ));
  }
}

/// @nodoc
abstract class _$FSProductDTOCopyWith<$Res>
    implements $FSProductDTOCopyWith<$Res> {
  factory _$FSProductDTOCopyWith(
          _FSProductDTO value, $Res Function(_FSProductDTO) then) =
      __$FSProductDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String productName,
      String productDescription,
      String productPrice,
      List<int> productImage,
      String productCategory});
}

/// @nodoc
class __$FSProductDTOCopyWithImpl<$Res> extends _$FSProductDTOCopyWithImpl<$Res>
    implements _$FSProductDTOCopyWith<$Res> {
  __$FSProductDTOCopyWithImpl(
      _FSProductDTO _value, $Res Function(_FSProductDTO) _then)
      : super(_value, (v) => _then(v as _FSProductDTO));

  @override
  _FSProductDTO get _value => super._value as _FSProductDTO;

  @override
  $Res call({
    Object id = freezed,
    Object productName = freezed,
    Object productDescription = freezed,
    Object productPrice = freezed,
    Object productImage = freezed,
    Object productCategory = freezed,
  }) {
    return _then(_FSProductDTO(
      id: id == freezed ? _value.id : id as String,
      productName:
          productName == freezed ? _value.productName : productName as String,
      productDescription: productDescription == freezed
          ? _value.productDescription
          : productDescription as String,
      productPrice: productPrice == freezed
          ? _value.productPrice
          : productPrice as String,
      productImage: productImage == freezed
          ? _value.productImage
          : productImage as List<int>,
      productCategory: productCategory == freezed
          ? _value.productCategory
          : productCategory as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FSProductDTO extends _FSProductDTO {
  const _$_FSProductDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.productName,
      @required this.productDescription,
      @required this.productPrice,
      @required this.productImage,
      @required this.productCategory})
      : assert(productName != null),
        assert(productDescription != null),
        assert(productPrice != null),
        assert(productImage != null),
        assert(productCategory != null),
        super._();

  factory _$_FSProductDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_FSProductDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final String productPrice;
  @override
  final List<int> productImage;
  @override
  final String productCategory;

  @override
  String toString() {
    return 'FSProductDTO(id: $id, productName: $productName, productDescription: $productDescription, productPrice: $productPrice, productImage: $productImage, productCategory: $productCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FSProductDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.productCategory, productCategory) ||
                const DeepCollectionEquality()
                    .equals(other.productCategory, productCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productDescription) ^
      const DeepCollectionEquality().hash(productPrice) ^
      const DeepCollectionEquality().hash(productImage) ^
      const DeepCollectionEquality().hash(productCategory);

  @JsonKey(ignore: true)
  @override
  _$FSProductDTOCopyWith<_FSProductDTO> get copyWith =>
      __$FSProductDTOCopyWithImpl<_FSProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FSProductDTOToJson(this);
  }
}

abstract class _FSProductDTO extends FSProductDTO {
  const _FSProductDTO._() : super._();
  const factory _FSProductDTO(
      {@JsonKey(ignore: true) String id,
      @required String productName,
      @required String productDescription,
      @required String productPrice,
      @required List<int> productImage,
      @required String productCategory}) = _$_FSProductDTO;

  factory _FSProductDTO.fromJson(Map<String, dynamic> json) =
      _$_FSProductDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  String get productPrice;
  @override
  List<int> get productImage;
  @override
  String get productCategory;
  @override
  @JsonKey(ignore: true)
  _$FSProductDTOCopyWith<_FSProductDTO> get copyWith;
}
