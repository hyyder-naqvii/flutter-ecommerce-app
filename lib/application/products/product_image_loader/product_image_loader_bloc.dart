import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/product/interface/i_product_repository.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_failure.dart';
import 'package:ecommerce_app/presentation/components/image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'product_image_loader_event.dart';
part 'product_image_loader_state.dart';
part 'product_image_loader_bloc.freezed.dart';

@injectable
class ProductImageLoaderBloc extends Bloc<ProductImageLoaderEvent, ProductImageLoaderState> {

  final IProductRepository _iProductRepository;
  ProductImageLoaderBloc(this._iProductRepository) : super(const ProductImageLoaderState.initial());

  @override
  Stream<ProductImageLoaderState> mapEventToState(
    ProductImageLoaderEvent event,
  ) async* {
    yield* event.map( getProductImage: (e) async* {
      yield const ProductImageLoaderState.loadingImage();
      final productLoadSuccessOrFailure = await _iProductRepository.getWithProductID(
          e.productID);
      yield productLoadSuccessOrFailure.fold(
            (failure) =>  ProductImageLoaderState.imageLoadFailure(failure),
            (user) {
          return ProductImageLoaderState.imageLoadSuccess(user.productImageURL);
        },
      );
    });
  }
}
