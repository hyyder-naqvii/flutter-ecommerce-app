import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/interface/i_product_repository.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_description.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_failure.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_name.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_price.dart';
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
          yield e.product.fold(() => state.copyWith(isEditing : false, saved : false),
                  (product) =>
                  state.copyWith(product: product, isEditing: true,saved : false));
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

          yield state.copyWith(
            product: state.product.copyWith(
              productImage : e.productImage,
            ),

            productStateOption: none(),);
        },
        addProduct: (e) async* {
          yield state.copyWith(
            isSaving : true,
              productStateOption: none(),
          );

          if(state.product.isValid){

            final failureOrSuccess =  state.isEditing ?
               await _productRepository.updateProduct(state.product) :
               await  _productRepository.insertNewProduct(state.product);

            if(failureOrSuccess.isRight()){
              print("Success Saving");
              yield state.copyWith(
                saved : true,
              );
            }

            yield state.copyWith(
              isSaving : false,
              showErrorMessages : true,
              product: state.product.copyWith(
                productImage : Uint8List.fromList([]),
              ),
              productStateOption : optionOf(failureOrSuccess),
            );

          }
          else{
            yield state.copyWith(
              isSaving : false,
              showErrorMessages : true,
              productStateOption : none(),
            );
          }


        }, productCategoryChanged: (e) async*{
        yield state.copyWith(
        product: state.product.copyWith(
          category : e.productCategory,
        ),

        productStateOption: none(),);

    });
  }
}
