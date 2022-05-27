import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Second_Page_First_Image extends StatelessWidget {
  const Second_Page_First_Image({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(image,
            height: 231, width: double.infinity),
        Positioned(
          //<-- SEE HERE

          top: 62,
          left: 56,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
      ],
    );
  }
}
