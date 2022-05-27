import 'package:flutter/material.dart';
class Second_Page_Paragraph_Container extends StatelessWidget {
  const Second_Page_Paragraph_Container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 313,
      child: RichText(
        text: TextSpan(
          style: TextStyle(
              color: Color(0xff80040415), fontSize: 12),
          children: <TextSpan>[
            TextSpan(
                text:
                    'Did you know you can order your next pizza from Pizza Hut, right on your mobile phone? Neither did we… Until we received an SMS promotion from Pizza Hut’s dedicated SMS short code 694-88,.. ',
                style: TextStyle(
                    color: Color(0xff80040415),
                    fontWeight: FontWeight.w500,
                    fontSize: 12)),
            TextSpan(
                text: 'Read more',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12))
          ],
        ),
      ),
    );
  }
}

