import 'package:flutter_cafe/presentations/setting/models/tax_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsLocalDatasource {
  // save tax to sharedpreference

  Future<bool> saveTax(TaxModel taxModel) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString('tax', taxModel.toJson());
  }

  // get tax from sharedpreference

  Future<TaxModel> getTax() async {
    final prefs = await SharedPreferences.getInstance();
    final tax = prefs.getString('tax');

    if (tax != null) {
      return TaxModel.fromJson(tax);
    } else {
      return TaxModel(
        name: 'Tax',
        type: TaxType.layanan,
        value: 11,
      );
    }
  }

  // save service charge to sharedpreference

  Future<bool> saveServiceCharge(int serviceCharge) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setInt('serviceCharge', serviceCharge);
  }

  // get service charge from sharedpreference

  Future<int> getServiceCharge() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('serviceCharge') ?? 0;
  }
}
