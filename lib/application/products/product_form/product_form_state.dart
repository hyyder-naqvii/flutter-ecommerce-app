part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    @required FSProduct product,
    @required Uint8List image,
    @required bool showErrorMessages,
    @required bool isSaving,
    @required bool isEditing,
    @required bool saved,
    @required Option<Either<ProductFailure, Unit>> productStateOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
        product: FSProduct.emptyProduct(),
        showErrorMessages: false,
        isSaving: false,
        image: Uint8List.fromList([]),
        productStateOption: none(),
        isEditing: false,
        saved: false,
      );
}
