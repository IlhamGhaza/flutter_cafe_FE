import 'package:bloc/bloc.dart';
import 'package:flutter_cafe/data/datasources/discount_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_discount_event.dart';
part 'edit_discount_state.dart';
part 'edit_discount_bloc.freezed.dart';

class EditDiscountBloc extends Bloc<EditDiscountEvent, EditDiscountState> {
  final DiscountRemoteDatasource discountRemoteDatasource;

  EditDiscountBloc(this.discountRemoteDatasource) : super(_Initial()) {
    on<_EditDiscount>((event, emit) async {
      // TODO: implement event handler

      emit(const _Loading());

      final result = await discountRemoteDatasource.updateDiscount(
          event.id, event.name, event.description, event.value);

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(const _Success()),
      );
    });
  }
}
