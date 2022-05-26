import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/model.dart';

class DataController extends GetxController {
  Model_data? result_list;
  var isDataLoading = false.obs;
  getUserInformationFrinApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(
          Uri.tryParse('https://foodbukka.herokuapp.com/api/v1/restaurant')!);

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        result_list = Model_data.fromJson(result);
      } else {}
    } catch (e) {
      print('error $e');
    } finally {
      isDataLoading(false);
    }
  }
}
