// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_cafe/data/models/response/product_response_model.dart';

class ProductQuantity {
  final Product product;
  int quantity;

  ProductQuantity({required this.product, required this.quantity});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductQuantity &&
        other.product == product &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  Map<String, dynamic> toLocalMap(int orderId) {
    return <String, dynamic>{
      'id_order': orderId,
      'id_product': product.id,
      'quantity': quantity,
      'price': product.price
    };
  }

  factory ProductQuantity.fromMap(Map<String, dynamic> map) {
    return ProductQuantity(
      product: Product.fromMap(map['product'] as Map<String, dynamic>),
      quantity: map['quantity'] as int,
    );
  }

  factory ProductQuantity.fromLocalMap(Map<String, dynamic> map) {
    return ProductQuantity(
      product: Product.fromOrderMap(map),
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductQuantity.fromJson(String source) =>
      ProductQuantity.fromMap(json.decode(source) as Map<String, dynamic>);
}
