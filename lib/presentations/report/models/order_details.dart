// import 'dart:convert';

// class OrderDetail {
//     final String? message;
//     final List<Datum>? data;

//     OrderDetail({
//         this.message,
//         this.data,
//     });

//     factory OrderDetail.fromRawJson(String str) => OrderDetail.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory OrderDetail.fromJson(Map<String, dynamic> json) => OrderDetail(
//         message: json["message"],
//         data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "message": message,
//         "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
//     };
// }

// class DataOrder {
//     final int? id;
//     final int? idOrder;
//     final int? idProduct;
//     final int? quantity;
//     final int? price;
//     final DateTime? createdAt;
//     final DateTime? updatedAt;
//     final Product? product;
//     final Order? order;

//     DataOrder({
//         this.id,
//         this.idOrder,
//         this.idProduct,
//         this.quantity,
//         this.price,
//         this.createdAt,
//         this.updatedAt,
//         this.product,
//         this.order,
//     });

//     factory DataOrder.fromRawJson(String str) => DataOrder.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory DataOrder.fromJson(Map<String, dynamic> json) => DataOrder(
//         id: json["id"],
//         idOrder: json["id_order"],
//         idProduct: json["id_product"],
//         quantity: json["quantity"],
//         price: json["price"],
//         createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//         updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
//         product: json["product"] == null ? null : Product.fromJson(json["product"]),
//         order: json["order"] == null ? null : Order.fromJson(json["order"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "id_order": idOrder,
//         "id_product": idProduct,
//         "quantity": quantity,
//         "price": price,
//         "created_at": createdAt?.toIso8601String(),
//         "updated_at": updatedAt?.toIso8601String(),
//         "product": product?.toJson(),
//         "order": order?.toJson(),
//     };
// }

// class Order {
//     final int? id;
//     final int? paymentAmount;
//     final int? subTotal;
//     final int? tax;
//     final int? discount;
//     final int? serviceCharge;
//     final int? total;
//     final String? paymentMethod;
//     final int? totalItem;
//     final int? idKasir;
//     final String? namaKasir;
//     final DateTime? transactionTime;
//     final DateTime? createdAt;
//     final DateTime? updatedAt;

//     Order({
//         this.id,
//         this.paymentAmount,
//         this.subTotal,
//         this.tax,
//         this.discount,
//         this.serviceCharge,
//         this.total,
//         this.paymentMethod,
//         this.totalItem,
//         this.idKasir,
//         this.namaKasir,
//         this.transactionTime,
//         this.createdAt,
//         this.updatedAt,
//     });

//     factory Order.fromRawJson(String str) => Order.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Order.fromJson(Map<String, dynamic> json) => Order(
//         id: json["id"],
//         paymentAmount: json["payment_amount"],
//         subTotal: json["sub_total"],
//         tax: json["tax"],
//         discount: json["discount"],
//         serviceCharge: json["service_charge"],
//         total: json["total"],
//         paymentMethod: json["payment_method"],
//         totalItem: json["total_item"],
//         idKasir: json["id_kasir"],
//         namaKasir: json["nama_kasir"],
//         transactionTime: json["transaction_time"] == null ? null : DateTime.parse(json["transaction_time"]),
//         createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//         updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "payment_amount": paymentAmount,
//         "sub_total": subTotal,
//         "tax": tax,
//         "discount": discount,
//         "service_charge": serviceCharge,
//         "total": total,
//         "payment_method": paymentMethod,
//         "total_item": totalItem,
//         "id_kasir": idKasir,
//         "nama_kasir": namaKasir,
//         "transaction_time": transactionTime?.toIso8601String(),
//         "created_at": createdAt?.toIso8601String(),
//         "updated_at": updatedAt?.toIso8601String(),
//     };
// }

// class Product {
//     final int? id;
//     final int? categoryId;
//     final String? name;
//     final String? description;
//     final String? image;
//     final int? price;
//     final int? stock;
//     final int? isAvailable;
//     final DateTime? createdAt;
//     final DateTime? updatedAt;

//     Product({
//         this.id,
//         this.categoryId,
//         this.name,
//         this.description,
//         this.image,
//         this.price,
//         this.stock,
//         this.isAvailable,
//         this.createdAt,
//         this.updatedAt,
//     });

//     factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Product.fromJson(Map<String, dynamic> json) => Product(
//         id: json["id"],
//         categoryId: json["category_id"],
//         name: json["name"],
//         description: json["description"],
//         image: json["image"],
//         price: json["price"],
//         stock: json["stock"],
//         isAvailable: json["is_available"],
//         createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//         updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "category_id": categoryId,
//         "name": name,
//         "description": description,
//         "image": image,
//         "price": price,
//         "stock": stock,
//         "is_available": isAvailable,
//         "created_at": createdAt?.toIso8601String(),
//         "updated_at": updatedAt?.toIso8601String(),
//     };
// }
