import 'package:bloc/bloc.dart';
import 'package:flutter_cafe/data/datasources/discount_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_discount_event.dart';
part 'add_discount_state.dart';
part 'add_discount_bloc.freezed.dart';

class AddDiscountBloc extends Bloc<AddDiscountEvent, AddDiscountState> {
  final DiscountRemoteDatasource discountRemoteDatasource;

  AddDiscountBloc(this.discountRemoteDatasource) : super(const _Initial()) {
    on<_AddDiscount>((event, emit) async {
      emit(const _Loading());
      final result = await discountRemoteDatasource.addDiscount(
          event.name, event.description, event.value);

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(const _Success()),
      );
    });
  }
}
