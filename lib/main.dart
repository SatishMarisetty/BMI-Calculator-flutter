import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results.dart';
import 'bmiCalculate.dart';

Color MaleColor = Color(0xff1d1e33);
Color FemaleColor = Color(0xff1d1e33);

int feet=5,inches=7,newValue=100,inche=67,weight=65,age=18;

void updateColor(int mode)
{
  if (mode==1)
    {
      FemaleColor=Color(0xff111328);
      MaleColor=Color(0xff1d1e33);
    }
  else
    {
      MaleColor=Color(0xff111328);
      FemaleColor=Color(0xff1d1e33);
    }
}

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
                 children: <Widget>[
                   Expanded(
                       child: GestureDetector(
                         onTap: () {
                           setState(() {
                             updateColor(1);
                           });
                         },
                         child: container(MaleColor,
                           IconIndicator(FontAwesomeIcons.mars,"MALE"),
                         ),
                       ),
                       ),
                   Expanded(
                       child: GestureDetector(
                         onTap: () {
                           setState(() {
                             updateColor(2);
                           });
                         },
                         child: container(FemaleColor,
                           IconIndicator(FontAwesomeIcons.venus,"FEMALE"),
                         ),
                       ),
                         //child: Text(''),
                   ),
                 ],
              ),
          ),
          Expanded(
              child:
              container(
                Color(0xff1d1e33),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text("HEIGHT",style: TextStyle(color: Color(0xff8d8e98),fontSize: 18),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(feet.toString(),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 55),),
                        Text('ft',style: TextStyle(color: Color(0xff8d8e98)),),
                        SizedBox(width: 5,),
                        Text(inches.toString(),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 55),),
                        Text('in',style: TextStyle(color: Color(0xff8d8e98)),),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xff8d8e98),
                        overlayColor: Color(0x29eb1555),
                        thumbColor: Color(0xffeb1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                        trackHeight: 0.2,
                      ),
                      child: Slider(value: inche.toDouble(),
                          min: 0,
                          max: 120,
                          onChanged: (newValue){
                        setState(() {
                          inche=newValue.toInt();
                          feet=newValue~/12;
                          newValue=newValue/12-feet;
                          inches=(newValue*12).toInt();
                        });

                          }),
                    )
                  ],
                ),
              ),
          ),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: container(Color(0xff1d1e33),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',style: TextStyle(color: Color(0xff8d8e98),fontSize: 18),),
                            Text(weight.toString(),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 45),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundFloatingButton(
                                  icon: FontAwesomeIcons.minus,
                                  setState: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(width: 10,),
                                RoundFloatingButton(
                                  icon: FontAwesomeIcons.plus,
                                  setState: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                        //child: Text(''),
                  ),
                  Expanded(
                      child: container(Color(0xff1d1e33),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: TextStyle(color: Color(0xff8d8e98),fontSize: 18),),
                        Text(age.toString(),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 45),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundFloatingButton(
                              icon: FontAwesomeIcons.minus,
                              setState: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10,),
                            RoundFloatingButton(
                              icon: FontAwesomeIcons.plus,
                              setState: (){
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),

                  ),
                  ),
                ],
              ),
          ),
          GestureDetector(
            onTap: (){
              CalculateBMI().setter(inche.toDouble(),weight.toDouble());
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>ResultPage()),
              );
            },
            child: Container(
              height: 70,
              width: double.infinity,
              color: Color(0xffeb1555),
              child: Center(child: Text('CALCULATE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
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
        Text(name,style: TextStyle(fontSize: 18,color: Color(0xff8d8e98)),),
      ],
    );
  }
}

class container extends StatelessWidget {
  final Color colour;
  final Widget child;
  container(this.colour,this.child);
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
class RoundFloatingButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback setState;
  RoundFloatingButton({required this.icon, required this.setState});
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Color(0xff4c4f5e),
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: CircleBorder(),
        elevation: 6,
        child: Icon(icon),
        onPressed: setState,
    );
        }
  }