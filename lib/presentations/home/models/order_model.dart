import 'dart:convert';

import 'package:flutter_cafe/presentations/home/models/product_quantity.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class OrderModel {
  final int? id;
  final int paymentAmount;
  final int subTotal;
  final int tax;
  final int discount;
  final int serviceCharge;
  final int total;
  final String paymentMethod;
  final int totalItem;
  final int idKasir;
  final String namaKasir;
  final String transactionTime;
  final int isSync;
  final List<ProductQuantity> orderItems;

  OrderModel({
    this.id,
    required this.paymentAmount,
    required this.subTotal,
    required this.tax,
    required this.discount,
    required this.serviceCharge,
    required this.total,
    required this.paymentMethod,
    required this.totalItem,
    required this.idKasir,
    required this.namaKasir,
    required this.transactionTime,
    required this.isSync,
    required this.orderItems,
  });

//  $request->validate([
//             'payment_amount' => 'required|numeric',
//             'subtotal' => 'required|numeric',
//             'tax' => 'required|numeric',
//             'discount' => 'required|numeric',
//             'service_charge' => 'required|numeric',
//             'total' => 'required|numeric',
//             'payment_method' => 'required',
//             'total_item' => 'required|numeric',
//             'kasir_id' => 'required|numeric',
//             'kasir_name' => 'required',
//             'transaction_time' => 'required',
//            'order_items' => 'required'

//         ]);

  Map<String, dynamic> toServerMap() {
    return <String, dynamic>{
      'payment_amount': paymentAmount,
      'sub_total': subTotal,
      'tax': tax,
      'discount': discount,
      'service_charge': serviceCharge,
      'total': total,
      'payment_method': paymentMethod,
      'total_item': totalItem,
      'id_kasir': idKasir,
      'nama_kasir': namaKasir,
      'transaction_time': transactionTime,
      'order_items': orderItems.map((e) => e.toLocalMap(id!)).toList()
    };
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'payment_amount': paymentAmount,
      'sub_total': subTotal,
      'tax': tax,
      'discount': discount,
      'service_charge': serviceCharge,
      'total': total,
      'payment_method': paymentMethod,
      'total_item': totalItem,
      'id_kasir': idKasir,
      'nama_kasir': namaKasir,
      'transaction_time': transactionTime,
      'is_sync': isSync,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id'] != null ? map['id'] as int : null,
      paymentAmount: map['payment_amount'] as int,
      subTotal: map['sub_total'] as int,
      tax: map['tax'] as int,
      discount: map['discount'] as int,
      serviceCharge: map['service_charge'] as int,
      total: map['total'] as int,
      paymentMethod: map['payment_method'] as String,
      totalItem: map['total_item'] as int,
      idKasir: map['id_kasir'] as int,
      namaKasir: map['nama_kasir'] as String,
      transactionTime: map['transaction_time'] as String,
      isSync: map['is_sync'] as int,
      orderItems: [],
    );
  }

  String toJson() => json.encode(toServerMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  OrderModel copyWith({
    int? id,
    int? paymentAmount,
    int? subTotal,
    int? tax,
    int? discount,
    int? serviceCharge,
    int? total,
    String? paymentMethod,
    int? totalItem,
    int? idKasir,
    String? namaKasir,
    String? transactionTime,
    int? isSync,
    List<ProductQuantity>? orderItems,
  }) {
    return OrderModel(
      id: id ?? this.id,
      paymentAmount: paymentAmount ?? this.paymentAmount,
      subTotal: subTotal ?? this.subTotal,
      tax: tax ?? this.tax,
      discount: discount ?? this.discount,
      serviceCharge: serviceCharge ?? this.serviceCharge,
      total: total ?? this.total,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      totalItem: totalItem ?? this.totalItem,
      idKasir: idKasir ?? this.idKasir,
      namaKasir: namaKasir ?? this.namaKasir,
      transactionTime: transactionTime ?? this.transactionTime,
      isSync: isSync ?? this.isSync,
      orderItems: orderItems ?? this.orderItems,
    );
  }
}
