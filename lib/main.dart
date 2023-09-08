import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF0a0d22),
      scaffoldBackgroundColor: Color(0xff0a0d22),
    ),
    home: BMI(),
  ));
}

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMiState();
}

class _BMiState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff0a0d22),
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
              child: Row(
                 children: <Widget>[
                   Expanded(
                       child: Container(
                         margin: EdgeInsets.all(15),
                         decoration: BoxDecoration(
                           color: Color(0xff1d1e33),
                           borderRadius: BorderRadius.circular(10),
                         ),

                         //child: Text(''),
                       )
                   ),
                   Expanded(
                       child: Container(
                         margin: EdgeInsets.all(15),
                         decoration: BoxDecoration(
                           color: Color(0xff1d1e33),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         //child: Text(''),
                       )
                   ),
                 ],
              ),
          ),
          Expanded(
            flex: 1,
              child:
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xff1d1e33),
                  borderRadius: BorderRadius.circular(10),
                ),
                //child: Text(''),
              )
          ),
          Expanded(
            flex: 1,
              child:Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //child: Text(''),
                      )
                  ),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        //child: Text(''),
                      )
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
