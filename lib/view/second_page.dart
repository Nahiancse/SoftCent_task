import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/second_page_controller.dart';
import '../widgets/second_page_widgets/second_page_first_image.dart';
import '../widgets/second_page_widgets/second_page_listview_container.dart';
import '../widgets/second_page_widgets/second_page_paragraph_container.dart';
// import 'controller/single_data_controller.dart';

class SingleDataScreen extends StatefulWidget {
  const SingleDataScreen({Key? key}) : super(key: key);

  @override
  State<SingleDataScreen> createState() => _SingleDataScreenState();
}

class _SingleDataScreenState extends State<SingleDataScreen> {
  SecondPage_Controller dataController = Get.put(SecondPage_Controller());
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
                  String name = '';

                  try {
                    image = dataController.single_result_list!.data!.image!;
                  } catch (e) {}
                  try {
                    name =
                        dataController.single_result_list!.data!.businessname!;
                  } catch (e) {}

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Second_Page_First_Image(image: image),
                      SizedBox(height: 23),
                      Container(
                        margin: EdgeInsets.all(22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1E1E2D)),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18,
                                ),
                                Text(
                                  '4.6',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1E1E2D)),
                                ),
                              ],
                            ),
                            SizedBox(height: 9),
                            Text(
                              '20% Cashback offers',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff040415)),
                            ),
                            SizedBox(height: 15),
                            Second_Page_Paragraph_Container(),
                            SizedBox(height: 39),
                            ListTile(
                              leading: Image.asset('asset/percent.png',
                                  color: Colors.black, height: 18, width: 18),
                              title: Text(
                                '10% cashback on the entire menu',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff040415)),
                              ),
                            ),
                            SizedBox(height: 15),
                            Divider(),
                            SizedBox(height: 17),
                            ListTile(
                              leading: Image.asset('asset/ticket.png',
                              color: Colors.black, height: 18, width: 18),
                              title: Text(
                                'Promo Code',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff040415)),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                            SizedBox(height: 14),
                            Divider(),
                            SizedBox(height: 30),
                            Text(
                              'Invite Friends & Get Cashback',
                               style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 17),
                            Second_Page_ListView_Container(),
                          ],
                        ),
                      ),
                    ],
                  );
                })));
  }
}

