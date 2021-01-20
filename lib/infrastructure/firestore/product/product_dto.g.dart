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
    productImage:
        (json['productImage'] as List)?.map((e) => e as int)?.toList(),
    productCategory: json['productCategory'] as String,
  );
}

Map<String, dynamic> _$_$_FSProductDTOToJson(_$_FSProductDTO instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productPrice': instance.productPrice,
      'productImage': instance.productImage,
      'productCategory': instance.productCategory,
    };
