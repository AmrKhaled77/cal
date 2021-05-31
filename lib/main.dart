import 'package:calculator/button.dart';
import 'package:calculator/calculator.dart';
import 'package:calculator/calculatorReslt.dart';
import 'package:calculator/simpelCaunter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyAppState extends State<MyApp>{

  String resltTV='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'calculator',
        home: Scaffold(
            appBar: AppBar(title: Text('calculator'),),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Expanded(child: calculatorReslt(resltTV)),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      calculatorButton('7',AddDight),
                      calculatorButton('8', AddDight),
                      calculatorButton('9',AddDight),
                      calculatorButton('+', OnOprationClick),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      calculatorButton('4', AddDight),
                      calculatorButton('5', AddDight),
                      calculatorButton('6', AddDight),
                      calculatorButton('-', OnOprationClick),
                    ],

                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      calculatorButton('1', AddDight),
                      calculatorButton('2',AddDight),
                      calculatorButton('3', AddDight),
                      calculatorButton('*', OnOprationClick),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      calculatorButton('=', OnEqualClick),
                      calculatorButton('0', AddDight),
                      calculatorButton('.', AddDight),
                      calculatorButton('/', OnOprationClick),
                    ],
                  ),
                ),

              ],
            )
        )
    );
  }


  void AddDight(String dight){
    setState(() {
      resltTV+=dight;
    });
    }
    String oprator='';
  String  reslt='';

  void OnOprationClick(String clickedOpretor){
    if(oprator.isEmpty){
  reslt=resltTV;
  this.oprator=clickedOpretor;
  setState(() {
    resltTV='';
  });
}    else {
  reslt=    Calculate(reslt,oprator,resltTV);
  this.oprator=clickedOpretor;
  setState(() {
    resltTV='';
  });
    }
  }
  void OnEqualClick(String text){
    var res= Calculate(reslt,oprator,resltTV);
    setState(() {
      resltTV=res;
      reslt='';
      oprator='';

    });

  }

}
String Calculate(String LHS ,String opretor,String RHS){
  double n1=double.parse(LHS);
  double n2=double.parse(RHS);
  double res=0.0;

    if(opretor=='+'){
  res=n1+n2;
    }else if(opretor=='-'){
      res=n1-n2;
    }else if (opretor=='*'){
      res=n1*n2;
    }else if (opretor=='/'){
      res=n1/n2;
    }


return res.toString();
}





class MyApp extends StatefulWidget {
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}
