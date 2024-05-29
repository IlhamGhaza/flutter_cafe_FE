import 'package:bloc/bloc.dart';
import 'package:flutter_cafe/data/datasources/reservation_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_reservation_event.dart';
part 'add_reservation_state.dart';
part 'add_reservation_bloc.freezed.dart';

class AddReservationBloc
    extends Bloc<AddReservationEvent, AddReservationState> {
  final ReservationRemoteDatasource reservationRemoteDatasource;

  AddReservationBloc(this.reservationRemoteDatasource) : super(_Initial()) {
    on<_AddReservation>((event, emit) async {
      emit(const _Loading());
      final result = await reservationRemoteDatasource.addReservation(
          event.customerName,
          event.customerPhone,
          event.reservationDate,
          event.reservationTime,
          event.notes,
          event.status,
          event.tableNumber);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(const _Success()),
      );
    });
  }
}
