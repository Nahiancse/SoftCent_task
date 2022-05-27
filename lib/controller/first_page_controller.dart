import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/first_page_model.dart';

class FirstPage_Controller extends GetxController {
  FirstPage_Model? result_list;
  var isDataLoading = false.obs;
  getUserInformationFrinApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(
          Uri.tryParse('https://foodbukka.herokuapp.com/api/v1/restaurant')!);

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        result_list = FirstPage_Model.fromJson(result);
      } else {}
    } catch (e) {
      print('error $e');
    } finally {
      isDataLoading(false);
    }
  }
}
