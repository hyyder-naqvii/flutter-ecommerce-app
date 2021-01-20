part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormEvent with _$ProductFormEvent {
  const factory ProductFormEvent.initializeProduct(Option<FSProduct> product) =  _InitializeProduct;
  const factory ProductFormEvent.productNameChanged(String productName) =  _ProductNameChanged;
  const factory ProductFormEvent.productCategoryChanged(String productCategory) =  _ProductCategoryChanged;
  const factory ProductFormEvent.productDescriptionChanged(String productDescription) =  _ProductDescriptionChanged;
  const factory ProductFormEvent.productPriceChanged(String productPrice) =  _ProductPriceChanged;
  const factory ProductFormEvent.productImageChanged(Uint8List productImage) =  _ProductImageChanged;
  const factory ProductFormEvent.addProduct() =  _AddProduct;
}