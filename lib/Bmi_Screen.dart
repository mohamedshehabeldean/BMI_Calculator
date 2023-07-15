import 'dart:math';
import 'package:bmi_calculator/Bmi_result_screen.dart';
import 'package:flutter/material.dart';
class Bmi_Calculator extends StatefulWidget {
  const Bmi_Calculator({Key? key}) : super(key: key);

  @override
  State<Bmi_Calculator> createState() => _Bmi_CalculatorState();
}

class _Bmi_CalculatorState extends State<Bmi_Calculator> {
  bool isMale=true;
  double height=120.0;
  int age=20;
  int weight=80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        // elevation: 0.0,
        titleSpacing: 90.0,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20.0,

          ),
        ),
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: Column(
          children: [
            Expanded(
                child:
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale=true;

                            });

                          },
                          child: Container(
                            // width: 170.0,0
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/images/male-gender.png'),
                                  width: 80,
                                  height: 80,),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text('MALE',style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold
                                ),)

                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color:isMale?Colors.blue: Colors.blueGrey[50],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;

                          });
                        },
                        child: Container(
                          // width: 170.0,0
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/images/female.png'),
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('FEMALE',style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold
                              ),)

                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color:!isMale?Colors.blue: Colors.blueGrey[50],
                          ),
                        ),
                      )
                      )

                    ],

                  ),
                )
            ) ,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                      )
                      ),
                      SizedBox(height: 9.0,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline:TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${height.round()}',style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900
                          )
                          ),
                          Text('CM',style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold
                          )
                          ),
                        ],

                      ),
                      Slider(
                        inactiveColor: Colors.black,
                        activeColor: Colors.red,
                        value:height,
                        min: 80.0,
                        max: 220.0,
                        onChanged:(value){
                          setState(() {
                            height=value;
                          });
                        }
                        ,)
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.blueGrey[50]
                  ),

                ),
              ),
            ),
            Expanded(
                child:
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('WEIGHT',style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold
                              )
                              ),
                              Text('$weight',style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900
                              )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;

                                      });
                                    },
                                    heroTag: ('weight-'),
                                    mini:true ,
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;

                                      });
                                    },
                                    heroTag: ('weight+'),
                                    mini:true ,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  )


                                ],
                              )


                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: Colors.blueGrey[50]
                          ),

                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('AGE',style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold
                              )
                              ),
                              Text('$age',style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900
                              )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: ('age-'),
                                    mini:true ,
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: ('age+'),
                                    mini:true ,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  )


                                ],
                              )


                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: Colors.blueGrey[50]
                          ),

                        ),
                      )
                    ],
                  ),
                )
            ) ,
            Container(
                width: double.infinity,
                height: 60.0,
                color: Colors.lime[900],
                child: MaterialButton(
                  onPressed: (){
                    double result=weight/pow(height/100, 2);
                    print(result.round());
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => resultScreen(
                              age: age,
                              isMale: isMale,
                              result: result,
                            )//arrow method
                        )
                    );

                  },child: Text('CALCULATE',style: TextStyle(
                  color: Colors.white,
                )
                  ,)
                  ,)
            )
          ],
        ),
      ),
    );
  }
}
