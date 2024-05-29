import 'dart:convert';

class ReservationResponseModel {
    final int? status;
    final List<Reservation>? data;

    ReservationResponseModel({
        this.status,
        this.data,
    });

    factory ReservationResponseModel.fromJson(String str) => ReservationResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ReservationResponseModel.fromMap(Map<String, dynamic> json) => ReservationResponseModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Reservation>.from(json["data"]!.map((x) => Reservation.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
    };
}

class Reservation {
    final int? id;
    final String? reservationCode;
    final DateTime? reservationDate;
    final String? reservationTime;
    final String? status;
    final String? notes;
    final String? tableNumber;
    final String? customerName;
    final String? customerPhone;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    Reservation({
        this.id,
        this.reservationCode,
        this.reservationDate,
        this.reservationTime,
        this.status,
        this.notes,
        this.tableNumber,
        this.customerName,
        this.customerPhone,
        this.createdAt,
        this.updatedAt,
    });

    factory Reservation.fromJson(String str) => Reservation.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Reservation.fromMap(Map<String, dynamic> json) => Reservation(
        id: json["id"],
        reservationCode: json["reservation_code"],
        reservationDate: json["reservation_date"] == null ? null : DateTime.parse(json["reservation_date"]),
        reservationTime: json["reservation_time"],
        status: json["status"],
        notes: json["notes"],
        tableNumber: json["table_number"],
        customerName: json["customer_name"],
        customerPhone: json["customer_phone"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "reservation_code": reservationCode,
        "reservation_date": "${reservationDate!.year.toString().padLeft(4, '0')}-${reservationDate!.month.toString().padLeft(2, '0')}-${reservationDate!.day.toString().padLeft(2, '0')}",
        "reservation_time": reservationTime,
        "status": status,
        "notes": notes,
        "table_number": tableNumber,
        "customer_name": customerName,
        "customer_phone": customerPhone,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
