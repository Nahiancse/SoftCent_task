import 'package:flutter/material.dart';
class Float_Button extends StatelessWidget {
  const Float_Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton( 
      //Floating action button on Scaffold
      backgroundColor: Color(0xff2DBC77),
      onPressed: (){
          //code to execute on button press
      },
      child: Image.asset('asset/image.png'), //icon inside button
  );
  }
}