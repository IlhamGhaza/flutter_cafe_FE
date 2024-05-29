import 'package:bloc/bloc.dart';
import 'package:flutter_cafe/data/datasources/product_local_datasource.dart';
import 'package:flutter_cafe/presentations/home/models/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_report_event.dart';
part 'transaction_report_state.dart';
part 'transaction_report_bloc.freezed.dart';

class TransactionReportBloc
    extends Bloc<TransactionReportEvent, TransactionReportState> {
  final ProductLocalDatasource productLocalDatasource;

  TransactionReportBloc(
    this.productLocalDatasource,
  ) : super(const _Initial()) {
    on<_GetReport>((event, emit) async {
      emit(const _Loading());
      final result = await productLocalDatasource.getAllOrder(
        event.startDate,
        event.endDate,
      );

      emit(_Loaded(result));
    });
  }
}
