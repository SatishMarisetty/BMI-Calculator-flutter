import 'package:flutter/material.dart';
import 'main.dart';
import 'bmiCalculate.dart';
class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff0a0d22),
        title: Text("BMI Calculator"),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Text('Your Result',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 45,),)),
          Expanded(
            flex: 5,
              child: container(Color(0xff1d1e33),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(CalculateBMI().getResult(),style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900,fontSize: 30),),
                  Text(CalculateBMI().getBMI(),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 75),),
                  Text(CalculateBMI().getInterpretation(),textAlign: TextAlign.center,)
                ],
              )
              )
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
    },
            child: Container(
              height: 70,
              width: double.infinity,
              color: Color(0xffeb1555),
              child: Center(child: Text('CALCULATE AGAIN',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
            ),
          ),
        ],
      ),
    );
  }
}
