import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/interface/i_product_repository.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'product_loader_bloc.freezed.dart';

part 'product_loader_event.dart';

part 'product_loader_state.dart';

@injectable
class ProductLoaderBloc extends Bloc<ProductLoaderEvent, ProductLoaderState> {
  final IProductRepository _productRepository;

  ProductLoaderBloc(this._productRepository)
      : super(const ProductLoaderState.initial());

  @override
  Stream<ProductLoaderState> mapEventToState(
    ProductLoaderEvent event,
  ) async* {
    yield* event.map(
        // Called first when customer signs in
        getAllProducts: (e) async* {
          print("Called Load");
      yield const ProductLoaderState.loadingProducts();
      final productSuccessOrFailure = await _productRepository.getAllProducts();
      if(productSuccessOrFailure.isRight()) { print("Load Success");}
      yield productSuccessOrFailure.fold(
          (failure) => ProductLoaderState.loadFailure(failure),
          (product) => ProductLoaderState.loadSuccess(product));
    }, watchAllProducts: (e)async* {
      yield const ProductLoaderState.loadingProducts();
      final productSuccessOrFailure =  _productRepository.watchAllProducts();
      yield* productSuccessOrFailure.map((failureOrProduct) => failureOrProduct.fold(
              (failure) => ProductLoaderState.loadFailure(failure),
              (product) => ProductLoaderState.loadSuccess(product))
      );
  }, getByCategory: (e)async* {
      yield const ProductLoaderState.loadingProducts();
      final productSuccessOrFailure = await _productRepository.getWithCategory(e.category);
      if(productSuccessOrFailure.isRight()) { print("Load Categoru ${e.category}");}
      yield productSuccessOrFailure.fold(
              (failure) => ProductLoaderState.loadFailure(failure),
              (product) => ProductLoaderState.loadSuccess(product));
    }, getByProductID: (e)async* {
      yield const ProductLoaderState.loadingProducts();
      final productSuccessOrFailure = await _productRepository.getWithProductID(e.productID);
      if(productSuccessOrFailure.isRight()) { print("Loaded Product with ID: ${e.productID}");}
      yield productSuccessOrFailure.fold(
              (failure) => ProductLoaderState.loadFailure(failure),
              (product) => ProductLoaderState.loadSuccess([product]));
    }
    );

}

}