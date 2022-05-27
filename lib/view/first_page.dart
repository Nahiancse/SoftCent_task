import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softcent_task/view/second_page.dart';

import '../controller/first_page_controller.dart';
import '../widgets/first_page_widgets/bottom_nav.dart';
import '../widgets/first_page_widgets/firstpage_first_container.dart';
import '../widgets/first_page_widgets/float_button.dart';
import '../widgets/first_page_widgets/firstpage_second_container.dart';
import '../widgets/first_page_widgets/firstpage_third_container.dart';

// import 'controller/data_controller.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  FirstPage_Controller dataController = Get.put(FirstPage_Controller());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataController.getUserInformationFrinApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Offers',
          style: TextStyle(
              fontSize: 18,
              color: Color(0xff040415),
              fontWeight: FontWeight.w500),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff040415),
          size: 12,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Color(0xff040415),
            size: 18,
          )
        ],
      ),
      body: Obx(() => dataController.isDataLoading.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  First_Container(dataController: dataController),
                  SizedBox( height: 23,),
                  Second_Container(dataController: dataController),
                  SizedBox(height: 22),
                  Third_Container(dataController: dataController),
                ],
              ),
            )),
      floatingActionButton: Float_Button(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Bottom_Nav(),
    );
  }
}
