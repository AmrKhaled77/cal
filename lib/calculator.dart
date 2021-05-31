import 'package:flutter/material.dart';

class CalculatorWidget extends StatelessWidget{
@override
  Widget build(BuildContext context) {
  // TODO: implement build
  return Column(
    children: [
      Text('123'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: OnDigitClick, child: Text('9'))
        ],
      ),
      Row(

      ),
      Row(

      ),
      Row(

      ),
    ],
  );
}
void OnDigitClick(){

}
  }

