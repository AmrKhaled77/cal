import 'package:flutter/material.dart';

class calculatorReslt extends StatelessWidget{
  String text;
  calculatorReslt(this.text)

  {}Widget build(BuildContext context) {

    return Text(text,style: TextStyle(fontSize: 35),);
  }

}