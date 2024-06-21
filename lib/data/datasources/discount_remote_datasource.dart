import 'package:dartz/dartz.dart';
import 'package:flutter_cafe/core/constants/variables.dart';
import 'package:flutter_cafe/data/datasources/auth_local_datasource.dart';
import 'package:flutter_cafe/data/models/response/discount_response_model.dart';
import 'package:http/http.dart' as http;

class DiscountRemoteDatasource {
  Future<Either<String, DiscountResponseModel>> getDiscounts() async {
    final url = Uri.parse('${Variables.baseUrl}/api/getDiscounts');

    final authData = await AuthLocalDataSource().getAuthData();

    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(DiscountResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get data');
    }
  }

  // add discount

  Future<Either<String, bool>> addDiscount(
      String name, String description, int value) async {
    final url = Uri.parse('${Variables.baseUrl}/api/saveDiscount');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.post(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
    }, body: {
      'name': name,
      'description': description,
      'value': value.toString(),
      'type': 'percentage',
    });

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Failed to add discount');
    }
  }

  Future<Either<String, bool>> updateDiscount(
      int id, String name, String description, int value) async {
    final url = Uri.parse('${Variables.baseUrl}/api/updateDiscount/$id');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.post(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
    }, body: {
      'name': name,
      'description': description,
      'value': value.toString(),
      'type': 'percentage',
    });

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Failed to update discount');
    }
  }

  Future<Either<String, bool>> editDiscount(
    String id,
    String name,
    String description,
    int value,
  ) async {
    final url = Uri.parse('${Variables.baseUrl}/api/updateDiscount/$id');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.put(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
    }, body: {
      'name': name,
      'description': description,
      'value': value.toString(),
      'type': 'percentage',
    });

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Failed to edit discount');
    }
  }

  Future<Either<String, bool>> deleteDiscount(
    String id,
  ) async {
    final url = Uri.parse('${Variables.baseUrl}/api/deleteDiscount/$id');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.delete(
      url,
      headers: {
        'Authorization': 'Bearer ${authData.token}',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Failed to add discount');
    }
  }
}
