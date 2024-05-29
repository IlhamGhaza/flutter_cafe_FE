import 'package:dartz/dartz.dart';
import 'package:flutter_cafe/core/constants/variables.dart';
import 'package:flutter_cafe/data/datasources/auth_local_datasource.dart';
import 'package:flutter_cafe/data/models/response/product_response_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDatasource {
  Future<Either<String, ProductResponseModel>> getProducts() async {
    final url = Uri.parse('${Variables.baseUrl}/api/getProduct');
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json'
    });

    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get product');
    }
  }
}
