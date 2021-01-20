import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/domain/auth/value_objects/uniqueID.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_description.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_image.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_name.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';
@freezed
abstract class FSProductDTO implements _$FSProductDTO {

  const FSProductDTO._();

  const factory FSProductDTO(
  {
    @JsonKey(ignore : true) String id,
    @required String productName,
    @required String productDescription,
    @required String productPrice,
    @required List<int> productImage,
    @required String productCategory,

  }
  ) = _FSProductDTO;

  factory FSProductDTO.fromDomain(FSProduct product){
    return FSProductDTO(
      id: UniqueID().value.getOrElse(null),
      productName: product.productName.value.getOrElse(null),
      productDescription:product.productDescription.value.getOrElse(null),
      productPrice: product.productPrice.value.getOrElse(null),
      productImage: product.productImage.toList(),
      productCategory: product.category,
    );

  }



 FSProduct toDomain(){
   return FSProduct(
        uID: UniqueID.fromUniqueString(id),
       productName: ProductName(productName),
       productDescription: ProductDescription(productDescription),
       productPrice: ProductPrice(productPrice),
       productImage: Uint8List.fromList(productImage),
     category: productCategory,
   );
 }

 factory FSProductDTO.fromJson(Map<String,dynamic> json) => _$FSProductDTOFromJson(json);
  factory FSProductDTO.fromFirestore(DocumentSnapshot doc) {
    return FSProductDTO.fromJson(doc.data()).copyWith(id: doc.id);
  }

}

// class UInt8ListConverter implements JsonConverter<Uint8List,List<int>>{
//   const UInt8ListConverter();
//   @override
//   Uint8List fromJson(List<int> intList) {
//     return Uint8List.fromList(intList);
//   }
//   @override
//   List<int> toJson(Uint8List uint8list) => uint8list.toList();
// }

