import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:financial_design/models/currency_model.dart';

class CurrenciesRepository {
  var dio = Dio();

  Future<CurrencyModel> getCurrencies() async {
    try {
      var response = await dio.get('https://api.hgbrasil.com/finance');
      if (response.statusCode == 200) {
        var data = json.decode(response.toString());
        return CurrencyModel.fromJson(data);
      } else {
        return CurrencyModel();
      }
    } catch (e) {
      print(e);
      return CurrencyModel();
    }
  }
}
