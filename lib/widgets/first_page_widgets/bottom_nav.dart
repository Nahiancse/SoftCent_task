import 'package:flutter/material.dart';
class Bottom_Nav extends StatelessWidget {
  const Bottom_Nav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar( 
      
      elevation:5.0,
      color:Colors.white,
      shape: CircularNotchedRectangle(), //shape of notch
      notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Row( //children inside bottom appbar
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('asset/home.png',height: 24,width: 24,),
          Image.asset('asset/percent.png',height: 24,width: 24,),
          Image.asset('asset/card.png',height: 24,width: 24,),
          Image.asset('asset/user.png',height: 24,width: 24,),
         
        ],
      ),
    );
  }
}