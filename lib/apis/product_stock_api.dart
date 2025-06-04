import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/system.dart';
import 'api.dart';

class ProductStockApi extends Api {
  var productStock;

  Future get() async {
    try {
      String url = this.apiUrl + "product-stock-report";
      var token = await System().getToken();
      var response =
          await http.get(Uri.parse(url), headers: this.getHeader('$token'));
      productStock = jsonDecode(response.body);
      if(productStock != null){
        return productStock;
      }else{
        return {};
      }
    } catch (e) {
      return {};
    }
  }
}
