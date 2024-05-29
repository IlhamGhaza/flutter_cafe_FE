part of 'reservation_bloc.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState.initial() = _Initial;
  const factory ReservationState.loading() = _Loading;
  const factory ReservationState.loaded(List<Reservation> reservations)= _Loaded;
  const factory ReservationState.error(String message) = _Error;
  

}
