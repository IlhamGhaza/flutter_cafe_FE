part of 'add_reservation_bloc.dart';

@freezed
class AddReservationEvent with _$AddReservationEvent {
  const factory AddReservationEvent.started() = _Started;

  const factory AddReservationEvent.addReservation({
    required String customerName,
    required String customerPhone,
    required String reservationDate,
    required String reservationTime,
    required String notes,
    required String status,
    required String tableNumber,
  }) = _AddReservation;
}
