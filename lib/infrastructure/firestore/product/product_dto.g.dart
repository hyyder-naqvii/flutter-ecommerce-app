// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FSProductDTO _$_$_FSProductDTOFromJson(Map<String, dynamic> json) {
  return _$_FSProductDTO(
    productName: json['productName'] as String,
    productDescription: json['productDescription'] as String,
    productPrice: json['productPrice'] as String,
    productImageURL: json['productImageURL'] as String,
    productCategory: json['productCategory'] as String,
  );
}

Map<String, dynamic> _$_$_FSProductDTOToJson(_$_FSProductDTO instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productPrice': instance.productPrice,
      'productImageURL': instance.productImageURL,
      'productCategory': instance.productCategory,
    };
