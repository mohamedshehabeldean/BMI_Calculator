import 'package:bmi_calculator/Bmi_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


//statless and statefull

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:Bmi_Calculator() ,
    );

  }

}