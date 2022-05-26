import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/data_controller.dart';

// import 'controller/data_controller.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Offers',style: TextStyle(fontSize: 18,color: Color(0xff040415),fontWeight: FontWeight.w500),),
        leading: Icon(Icons.arrow_back_ios,color: Color(0xff040415),size: 12,),
        actions: [Icon(Icons.search,color: Color(0xff040415),size: 18,)],
      ),
        body: Obx(() => dataController.isDataLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
              children: [

///////////////////////////////////////////////////////////
                Expanded(
                  
                  child: Container(
                    margin: EdgeInsets.all(22),
                    // height: 800,
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:42),
                    Row(
              children: [
                    Image.asset('asset/gitIcon.png',height: 24,width: 24,),
                    SizedBox(width: 11,),
                    Text('Discount on the all food',style: TextStyle(fontSize: 30,color: Color(0xff000000),fontWeight: FontWeight.w500),),
                    
              ],
            ),
            SizedBox(height:21),
                    Container(
                      height: 500,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                          itemCount: dataController.result_list!.result!.length,
                          itemBuilder: (context, index) {
                            String image = '';
                            String name = '';
                            String subtitle = '';

                            try {
                              image = dataController.result_list!.result![index].image!;
                            } catch (e) {}
                            try {
                              name = dataController.result_list!.result![index].businessname!;
                            } catch (e) {}

                            return Container(
                             margin: EdgeInsets.only(right:20),
                              height: 500,
                       width: 250,
                               
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image(image: NetworkImage(image,),height: 104,
  width: double.infinity,
  fit: BoxFit.fill,),
                                  ),
                                  
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Text(name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Color(0xff040415
                                  )),),
                                  Spacer(),
                                  Icon(Icons.star,color: Colors.yellow,size: 14,),
                                   Text('4.6',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff040415
                                  )),),

                                  ],
                                ),
                                SizedBox(height: 2,),
                                Text('Tallinn,Estonia',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xff040415
),),),
// SizedBox(width: 20,),

                                ],
                              ),
                            );
                            
                            // ListTile(
                            //   leading: CircleAvatar(
                            //     radius: 20,
                            //     backgroundImage: NetworkImage(image),
                            //   ),
                            //   title: Text(''),
                            //   subtitle: Text(''),
                            // );
                          }),
                    ),
                  ],
                  ),
                  ),
                ),
/////////////////////////////////////////////////////////////////////////////////////////////////////








                

                
              ],
            )));
  }
}
