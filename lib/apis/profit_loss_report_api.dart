import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/system.dart';
import 'api.dart';

class ProfitLossReportApi extends Api {
  var profitLossReport;

  Future get() async {
    try {
      String url = this.apiUrl + "profit-loss-report";
      var token = await System().getToken();
      var response =
          await http.get(Uri.parse(url), headers: this.getHeader('$token'));
      profitLossReport = jsonDecode(response.body);
      if(profitLossReport != null){
        return profitLossReport;
      }else{
       return {};
      }
    } catch (e) {
      return {};
    }
  }
}
