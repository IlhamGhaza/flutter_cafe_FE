part of 'edit_discount_bloc.dart';

@freezed
class EditDiscountEvent with _$EditDiscountEvent {
  const factory EditDiscountEvent.started() = _Started;

   const factory EditDiscountEvent.editDiscount({
    required int id,
    required String name,
    required String description,
    required int value,
  }) = _EditDiscount;
}