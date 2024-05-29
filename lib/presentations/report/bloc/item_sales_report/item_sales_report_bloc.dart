import 'package:bloc/bloc.dart';
import 'package:flutter_cafe/data/datasources/product_local_datasource.dart';
import 'package:flutter_cafe/presentations/home/models/order_item_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_sales_report_event.dart';
part 'item_sales_report_state.dart';
part 'item_sales_report_bloc.freezed.dart';

class ItemSalesReportBloc
    extends Bloc<ItemSalesReportEvent, ItemSalesReportState> {
  final ProductLocalDatasource productLocalDatasource;

  ItemSalesReportBloc(this.productLocalDatasource) : super(const _Initial()) {
    on<_GetItemSalesReport>((event, emit) async {
      emit(const _Loading());

      try {
        final result = await productLocalDatasource.getAllOrderItemDetails(
            event.startDate, event.endDate);

        emit(_Loaded(result));
      } catch (e) {
        print('Error fetching order item details: $e');
      }
    });
  }
}
