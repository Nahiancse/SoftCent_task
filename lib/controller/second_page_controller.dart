import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// import '../model/model.dart';
import '../model/second_page_model.dart';

class SecondPage_Controller extends GetxController {
  SecondPage_Model? single_result_list;
  var isDataLoading = false.obs;
  getUserInformationFrinApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(Uri.tryParse(
          'https://foodbukka.herokuapp.com/api/v1/restaurant/5f5eccf3e923d0aca3e7d41c')!);

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        single_result_list = SecondPage_Model.fromJson(result);
      } else {}
    } catch (e) {
      print('error $e');
    } finally {
      isDataLoading(false);
    }
  }
}
