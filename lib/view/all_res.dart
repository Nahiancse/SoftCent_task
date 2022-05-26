import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/data_controller.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  DataController dataController = Get.put(DataController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataController.getUserInformationFrinApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => dataController.isDataLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: dataController.result_list!.result!.length,
                itemBuilder: (context, index) {
                  String image = '';
                  String title = '';
                  String subtitle = '';

                  try {
                    image = dataController.result_list!.result![index].image!;
                  } catch (e) {}

                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(image),
                    ),
                    title: Text(''),
                    subtitle: Text(''),
                  );
                })));
  }
}
