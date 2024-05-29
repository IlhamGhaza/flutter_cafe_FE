import 'package:flutter_cafe/core/constants/variables.dart';
import 'package:flutter_cafe/data/datasources/auth_local_datasource.dart';
import 'package:flutter_cafe/presentations/home/models/order_model.dart';
import 'package:http/http.dart' as http;

class OrderRemoteDatasource {
  Future<bool> saveOrder(OrderModel orderModel) async {
    final authData = await AuthLocalDataSource().getAuthData();

    final response = await http.post(
        Uri.parse('${Variables.baseUrl}/api/saveOrder'),
        body: orderModel.toJson(),
        headers: {
          'Authorization': 'Bearer ${authData.token}',
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        });

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
