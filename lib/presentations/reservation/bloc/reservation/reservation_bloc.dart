import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cafe/data/datasources/reservation_remote_datasource.dart';
import 'package:flutter_cafe/presentations/reservation/models/reservation_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_event.dart';
part 'reservation_state.dart';
part 'reservation_bloc.freezed.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  final ReservationRemoteDatasource reservationRemoteDatasource;

  ReservationBloc(this.reservationRemoteDatasource) : super(const _Initial()) {
    on<_GetReservations>((event, emit) async {
      emit(const _Loading());
      final result = await reservationRemoteDatasource.getReservations();

      result.fold((l) => emit(_Error(l)), (r) => emit(_Loaded(r.data!)));
    });
  }
}
