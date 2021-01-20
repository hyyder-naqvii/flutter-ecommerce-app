
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
abstract class ProductFailure with _$ProductFailure{
  const factory ProductFailure.unexpected() = _Unexpected;
  const factory ProductFailure.permissionDenied() = _PermissionDenied;
  const factory ProductFailure.updateError() = _UpdateError;
}
