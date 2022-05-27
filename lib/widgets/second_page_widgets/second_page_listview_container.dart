
import 'package:flutter/material.dart';
class Second_Page_ListView_Container extends StatelessWidget {
  const Second_Page_ListView_Container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              height: 110,
              width: 148,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Image.asset('asset/pic.png'),
                  Text('Superstore'),
                  Text('20% Cashback offers'),
                  SizedBox(height: 7),
                  Container(
                    color: Color(0xffEFEFEF),
                    height: 24,
                    width: 110,
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Text('PTB62',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      FontWeight.w400)),
                          Image.asset(
                            'asset/iicon.png',
                            height: 12,
                            width: 12,
                          )
                        ]),
                  )
                ],
              )),
          Container(
              height: 110,
              width: 148,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Image.asset('asset/pic2.png'),
                  Text('Anjans'),
                  Text('20% Cashback offers'),
                  SizedBox(height: 7),
                  Container(
                    color: Color(0xffEFEFEF),
                    height: 24,
                    width: 110,
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Text('PTB62',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      FontWeight.w400)),
                          Image.asset(
                            'asset/iicon.png',
                            height: 12,
                            width: 12,
                          )
                        ]),
                  )
                ],
              )),
          Container(
              height: 110,
              width: 148,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Image.asset('asset/pic3.png'),
                  Text('KFC Food'),
                  Text('20% Cashback offers'),
                  SizedBox(height: 7),
                  Container(
                    color: Color(0xffEFEFEF),
                    height: 24,
                    width: 110,
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceBetween,
                        children: [
                          Text('PTB62',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                      FontWeight.w400)),
                          Image.asset(
                            'asset/iicon.png',
                            height: 12,
                            width: 12,
                          )
                        ]),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
