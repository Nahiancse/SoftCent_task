import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/single_data_controller.dart';
// import 'controller/single_data_controller.dart';

class SingleDataScreen extends StatefulWidget {
  const SingleDataScreen({Key? key}) : super(key: key);

  @override
  State<SingleDataScreen> createState() => _SingleDataScreenState();
}

class _SingleDataScreenState extends State<SingleDataScreen> {
  SingleDataController dataController = Get.put(SingleDataController());
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
                itemCount: 1,
                itemBuilder: (context, index) {
                  String image = '';
                  String title = '';
                  String subtitle = '';

                  try {
                    image = dataController.single_result_list!.data!.image!;
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
