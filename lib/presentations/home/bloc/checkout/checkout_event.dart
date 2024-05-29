part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started() = _Started;

  // add item
  const factory CheckoutEvent.addItem(Product product) = _AddItem;
  const factory CheckoutEvent.removeItem(Product product) = _RemoveItem;

  // add discount
  const factory CheckoutEvent.addDiscount(Discount discount) = _AddDiscount;
  const factory CheckoutEvent.removeDiscount(Discount discount) = _RemoveDiscount;

  // add tax
  const factory CheckoutEvent.addTax(int tax) = _AddTax;
  const factory CheckoutEvent.removeTax(int tax) = _RemoveTax;

  // add service charge
  const factory CheckoutEvent.addServiceCharge(int serviceCharge) = _AddServiceCharge;
  const factory CheckoutEvent.removeServiceCharge(int serviceCharge) = _RemoveServiceCharge;
}