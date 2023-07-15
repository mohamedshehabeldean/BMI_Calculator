import 'package:flutter/material.dart';
class resultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;
  resultScreen({
    required this.isMale,
    required this.result,
    required this.age
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_rounded
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
            'BMI Result'
        ),
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 100.0
            ),
            child: Column(

              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Gender : ${isMale?'male':'female'}"
                  ,style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Result : ${result.round()}",style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("Age : $age",style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Image(image: AssetImage('assets/images/bmi-chart.png'),
                  // width: 500,
                  height: 350,


                ),

              ],
            ),
          ),
        ),
      ),
    );

  }

}

