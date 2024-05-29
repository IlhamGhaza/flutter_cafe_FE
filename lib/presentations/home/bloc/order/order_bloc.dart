import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_cafe/data/datasources/auth_local_datasource.dart';
import 'package:flutter_cafe/data/datasources/product_local_datasource.dart';
import 'package:flutter_cafe/presentations/home/models/order_model.dart';
import 'package:flutter_cafe/presentations/home/models/product_quantity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(_Initial()) {
    on<_Order>((event, emit) async {
      // TODO: implement event handler

      emit(_Loading());

      // save to local storage

//  OrderModel({
//     this.id,
//     required this.paymentAmount,
//     required this.subTotal,
//     required this.tax,
//     required this.discount,
//     required this.serviceCharge,
//     required this.total,
//     required this.paymentMethod,
//     required this.totalItem,
//     required this.idKasir,
//     required this.namaKasir,
//     required this.transactionTime,
//     required this.isSync,
//     required this.orderItems,
//   });

      final subTotal = event.items.fold<int>(
          0,
          (previousValue, element) =>
              previousValue + (element.product.price! * element.quantity));
      final total = subTotal + event.tax + event.serviceCharge - event.discount;
      final totalItem = event.items.fold<int>(
          0, ((previousValue, element) => previousValue + element.quantity));

      // final totalDiscount = event.discount / 100 * subTotal;

      final userData = await AuthLocalDataSource().getAuthData();
      final dataInput = OrderModel(
        subTotal: subTotal,
        discount: event.discount,
        tax: event.tax,
        serviceCharge: event.serviceCharge,
        paymentAmount: event.paymemtAmount,
        paymentMethod: 'Cash',
        totalItem: totalItem,
        idKasir: userData.user!.id!,
        namaKasir: userData.user!.name!,
        transactionTime: DateTime.now().toIso8601String(),
        isSync: 0,
        orderItems: event.items,
        total: total,
      );

      await ProductLocalDatasource.instance.saveOrder(dataInput);

      emit(_Loaded(dataInput));
    });
  }
}
