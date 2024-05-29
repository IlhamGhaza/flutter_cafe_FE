part of 'edit_reservation_bloc.dart';

@freezed
class EditReservationState with _$EditReservationState {
  const factory EditReservationState.initial() = _Initial;
  const factory EditReservationState.loading() = _Loading;
  const factory EditReservationState.error(String message) = _Error;
  const factory EditReservationState.success() = _Success;
  
}
