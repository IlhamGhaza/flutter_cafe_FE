class OrderItemDetail {
  final int? id;
  final int? idOrder;
  final int? idProduct;
  final int? quantity;
  final int? price;
  final String? productName;
  final int? productPrice;
  final DateTime? transactionTime; // tambahan field transaction_time

  OrderItemDetail({
    this.id,
    this.idOrder,
    this.idProduct,
    this.quantity,
    this.price,
    this.productName,
    this.productPrice,
    this.transactionTime,
  });

  factory OrderItemDetail.fromMap(Map<String, dynamic> map) {
    return OrderItemDetail(
      id: map['id'] as int?,
      idOrder: map['id_order'] as int?,
      idProduct: map['id_product'] as int?,
      quantity: map['quantity'] as int?,
      price: map['price'] as int?,
      productName: map['product_name'] as String?,
      productPrice: map['product_price'] as int?,
      transactionTime: map['transaction_time'] != null
          ? DateTime.parse(map['transaction_time'] as String)
          : null, // parsing dari string ke DateTime
    );
  }
}
