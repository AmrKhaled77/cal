import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Counter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
return createState();
  }
}
class counterState extends State<Counter>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Column(
      children: [
        Text('counter'),
        FloatingActionButton(onPressed: OnCounterClick,child: Icon(Icons.add),),
      ],
    );

  }
void OnCounterClick(){

}
}