import 'package:dartz/dartz.dart';
import 'package:flutter_cafe/core/constants/variables.dart';
import 'package:flutter_cafe/data/datasources/auth_local_datasource.dart';
import 'package:flutter_cafe/presentations/reservation/models/reservation_response_model.dart';
import 'package:http/http.dart' as http;

class ReservationRemoteDatasource {
  Future<Either<String, ReservationResponseModel>> getReservations() async {
    final url = Uri.parse('${Variables.baseUrl}/api/getReservations');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json'
    });

    if (response.statusCode == 200) {
      return Right(ReservationResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get product');
    }
  }

  Future<Either<String, bool>> addReservation(
    String customerName,
    String customerPhone,
    String reservationDate,
    String reservationTime,
    String notes,
    String status,
    String tableNumber,
  ) async {
    final url = Uri.parse('${Variables.baseUrl}/api/saveReservation');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.post(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json'
    }, body: {
      'customer_name': customerName,
      'customer_phone': customerPhone,
      'reservation_date': reservationDate,
      'reservation_time': reservationTime,
      'notes': notes,
      'status': status,
      'table_number': tableNumber,
    });

    print(response.body);

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Failed to add reservation');
    }
  }

  Future<Either<String, bool>> editReservation(
    int id,
    String customerName,
    String customerPhone,
    String reservationDate,
    String reservationTime,
    String notes,
    String status,
    String tableNumber,
  ) async {
    final url = Uri.parse('${Variables.baseUrl}/api/updateReservation/$id');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.post(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json'
    }, body: {
      'customer_name': customerName,
      'customer_phone': customerPhone,
      'reservation_date': reservationDate,
      'reservation_time': reservationTime,
      'notes': notes,
      'status': status,
      'table_number': tableNumber,
    });

    print(response.body);

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Failed to add reservation');
    }
  }
}
