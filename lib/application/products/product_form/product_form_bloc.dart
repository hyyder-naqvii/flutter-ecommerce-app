import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/interface/i_product_repository.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_description.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_failure.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_name.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_price.dart';
import 'package:ecommerce_app/presentation/components/image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'product_form_bloc.freezed.dart';

part 'product_form_event.dart';

part 'product_form_state.dart';

@injectable
class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  final IProductRepository _productRepository;

  ProductFormBloc(this._productRepository) : super(ProductFormState.initial());

  @override
  Stream<ProductFormState> mapEventToState(ProductFormEvent event,) async* {
    yield* event.map(
        initializeProduct: (e) async* {

          if(e.product.isSome()){
            Uint8List imageData =  await _productRepository.getImageData(e.product.getOrElse(null).productImageURL,e.product.getOrElse(null).uID.value.getOrElse(null));
            yield state.copyWith(product: e.product.getOrElse(null), isEditing: true, saved: false,image : imageData);
          }
          else{
            yield state;
          }


        },
        productNameChanged: (e) async* {
          yield state.copyWith(
            product: state.product.copyWith(
              productName: ProductName(e.productName),
            ),

            productStateOption: none(),
          );
        },
        productDescriptionChanged: (e) async* {
          yield state.copyWith(
            product: state.product.copyWith(
              productDescription: ProductDescription(e.productDescription),
            ),

            productStateOption: none(),
          );
        },
        productPriceChanged: (e) async* {
          yield state.copyWith(
            product: state.product.copyWith(
              productPrice: ProductPrice(e.productPrice),
            ),

            productStateOption: none(),
          );
        },
        productImageChanged: (e) async* {
          if (!e.removeInstead) {
            final File _image = await ImagePickerUtility.pickImageFromGallery();
            final Uint8List _imageBytes = await _image.readAsBytes();
            yield state.copyWith(
              image: _imageBytes,
              productStateOption: none(),);
          }

          else {
            yield state.copyWith(
              image: null,
              productStateOption: none(),);
          }
        },
        addProduct: (e) async* {
          yield state.copyWith(
            isSaving: true,
            productStateOption: none(),
          );

          if (state.product.isValid) {
            final failureOrSuccess = state.isEditing ?
            await _productRepository.updateProduct(state.product, state.image) :
            await _productRepository.insertNewProduct(
                state.product, state.image);

            if (failureOrSuccess.isRight()) {
              print("Success Saving");
              yield state.copyWith(
                saved: true,
              );
            }

            /// We reset the state here.
            yield state.copyWith(
              isSaving: false,
              showErrorMessages: true,
              product: state.product.copyWith(
                productImageURL: ' ',
              ),
              productStateOption: optionOf(failureOrSuccess),
            );
          }
          else {
            yield state.copyWith(
              isSaving: false,
              showErrorMessages: true,
              productStateOption: none(),
            );
          }
        },
        productCategoryChanged: (e) async* {
          yield state.copyWith(
            product: state.product.copyWith(
              category: e.productCategory,
            ),

            productStateOption: none(),);
        });
  }
}
