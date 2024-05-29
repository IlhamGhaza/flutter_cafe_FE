part of 'edit_reservation_bloc.dart';

@freezed
class EditReservationEvent with _$EditReservationEvent {
  const factory EditReservationEvent.started() = _Started;

  const factory EditReservationEvent.editReservation({
    required int id,
    required String customerName,
    required String customerPhone,
    required String reservationDate,
    required String reservationTime,
    required String notes,
    required String status,
    required String tableNumber,
  }) = _EditReservation;
 
}