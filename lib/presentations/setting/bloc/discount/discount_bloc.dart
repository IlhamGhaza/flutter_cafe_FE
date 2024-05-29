import 'package:bloc/bloc.dart';
import 'package:flutter_cafe/data/datasources/discount_remote_datasource.dart';
import 'package:flutter_cafe/data/models/response/discount_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_event.dart';
part 'discount_state.dart';
part 'discount_bloc.freezed.dart';

class DiscountBloc extends Bloc<DiscountEvent, DiscountState> {
  final DiscountRemoteDatasource discountRemoteDatasource;
  DiscountBloc(
    this.discountRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetDiscounts>((event, emit) async {
      emit(const _Loading());
      final result = await discountRemoteDatasource.getDiscounts();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
