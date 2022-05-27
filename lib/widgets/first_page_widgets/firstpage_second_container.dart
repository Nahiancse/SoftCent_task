import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/first_page_controller.dart';
import '../../view/second_page.dart';
class Second_Container extends StatelessWidget {
  const Second_Container({
    Key? key,
    required this.dataController,
  }) : super(key: key);

  final FirstPage_Controller dataController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 22),
      // height: ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Exclusive cashback offer',
                style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(height: 21),
          Container(
            height: 210,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount:
                    dataController.result_list!.result!.length,
                itemBuilder: (context, index) {
                  String image = '';
                  String name = '';

                  try {
                    image = dataController
                        .result_list!.result![index].image!;
                  } catch (e) {}
                  try {
                    name = dataController.result_list!
                        .result![index].businessname!;
                  } catch (e) {}

                  return GestureDetector(
                    onTap: () {
                      Get.to(() => SingleDataScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 210,
                      width: 250,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(15),
                                child: Image(
                                  image: NetworkImage(
                                    image,
                                  ),
                                  height: 104,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                  //<-- SEE HERE

                                  top: 10,
                                  left: 16,
                                  child: Row(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.all(1),
                                        alignment:
                                            Alignment.center,
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                new BorderRadius
                                                        .circular(
                                                    15)),
                                        height: 22,
                                        width: 100,
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: '20%',
                                                  style: TextStyle(
                                                      color: Color(
                                                          0xffFF0000),
                                                      fontWeight:
                                                          FontWeight
                                                              .w700,
                                                      fontSize:
                                                          16)),
                                              TextSpan(
                                                  text:
                                                      'Cashback',
                                                  style: TextStyle(
                                                      color: Color(
                                                          0xffFF0000),
                                                      fontWeight:
                                                          FontWeight
                                                              .w400,
                                                      fontSize:
                                                          14))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),

                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff040415)),
                              ),
                              Spacer(),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14,
                              ),
                              Text(
                                '4.6',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff040415)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Flexible(
                            child: Text(
                              'Cashback offer 20% of all food',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff040415),
                              ),
                            ),
                          ),
                          // SizedBox(width: 20,),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
