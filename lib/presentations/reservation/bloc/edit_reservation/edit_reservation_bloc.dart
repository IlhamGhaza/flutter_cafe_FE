import 'package:bloc/bloc.dart';
import 'package:flutter_cafe/data/datasources/reservation_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_reservation_event.dart';
part 'edit_reservation_state.dart';
part 'edit_reservation_bloc.freezed.dart';

class EditReservationBloc
    extends Bloc<EditReservationEvent, EditReservationState> {
  final ReservationRemoteDatasource reservationRemoteDatasource;

  EditReservationBloc(this.reservationRemoteDatasource) : super(_Initial()) {
    on<_EditReservation>((event, emit) async {
      // TODO: implement event handler

      emit(const _Loading());

      final result = await reservationRemoteDatasource.editReservation(
          event.id,
          event.customerName,
          event.customerPhone,
          event.reservationDate,
          event.reservationTime,
          event.notes,
          event.status,
          event.tableNumber);

      result.fold((l) => emit(_Error(l)), (r) => emit(const _Success()));
    });
  }
}
