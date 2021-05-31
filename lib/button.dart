import 'dart:ui';

import 'package:flutter/material.dart';

class calculatorButton extends StatelessWidget{
  String buttonText;
  Function onclick;
  calculatorButton(this.buttonText,this.onclick)

  {} @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Expanded(child: Container(
      margin: EdgeInsets.all(1),
      child: ElevatedButton(onPressed: ()=>{
        onclick(buttonText)
      },
          child: Text(buttonText,style: TextStyle(fontSize: 28),)
        ),
    )
    );
  }
}