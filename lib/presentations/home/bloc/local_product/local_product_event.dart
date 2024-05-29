part of 'local_product_bloc.dart';

@freezed
class LocalProductEvent with _$LocalProductEvent {
  const factory LocalProductEvent.started() = _Started;
  const factory LocalProductEvent.getLocalProduct() = _GetLocalProduct;
  const factory LocalProductEvent.searchProduct(String query) = _SearchProduct;
}