import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                       child: container(Color(0xff1d1e33),
                         IconIndicator(FontAwesomeIcons.mars,"MALE"),
                       ),
                       ),
                   Expanded(
                       child: container(Color(0xff1d1e33),
                         IconIndicator(FontAwesomeIcons.venus,"FEMALE"),
                       ),
                         //child: Text(''),
                   ),
                 ],
              ),
          ),
          Expanded(
            flex: 1,
              child:
              container(Color(0xff1d1e33)),
                //child: Text(''),
          ),
          Expanded(
            flex: 1,
              child:Row(
                children: <Widget>[
                  Expanded(
                      child: container(Color(0xff1d1e33)),
                        //child: Text(''),
                  ),
                  Expanded(
                      child: container(Color(0xff1d1e33)),
                        //child: Text(''),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}

class IconIndicator extends StatelessWidget {
  final IconData icon;
  final String name;
  IconIndicator(this.icon,this.name);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size: 80,),
        SizedBox(height: 15,),
        Text(name,style: TextStyle(fontSize: 18,color: Color(0xff8d8e98)),)
      ],
    );
  }
}

class container extends StatelessWidget {
  final Color colour;
  final Widget child;
  container(this.colour,[this.child=const Text('')]);
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
    ),
        child: child,
    );
  }
}