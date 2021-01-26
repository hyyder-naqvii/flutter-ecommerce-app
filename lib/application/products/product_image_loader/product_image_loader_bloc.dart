import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'product_image_loader_event.dart';
part 'product_image_loader_state.dart';

class ProductImageLoaderBloc extends Bloc<ProductImageLoaderEvent, ProductImageLoaderState> {
  ProductImageLoaderBloc() : super(ProductImageLoaderInitial());

  @override
  Stream<ProductImageLoaderState> mapEventToState(
    ProductImageLoaderEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
