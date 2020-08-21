import 'package:bmi_calculator/customing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultpage.dart';

import 'constants.dart';
import 'calculation.dart';


enum Gender{male,female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=180;
  int weight=50;
  int age=25;

  Container containermaker(){
    return Container(
      margin: EdgeInsets.all(10.0),

      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),


      ),

    );
  }


  Color malecardcolor=inactivecardcolor;
  Color femalecardcolor=inactivecardcolor;
  Gender selectedgender;
  /*
  1=male,2=female;


  void updatecolorr(Gender gender){
    if(gender==Gender.male){
      if(malecardcolor==activecardcolor){
        malecardcolor=inactivecardcolor;
        femalecardcolor=activecardcolor;
      }
      else{
        malecardcolor=activecardcolor;
        femalecardcolor=inactivecardcolor;
      }
    }
    else{
      if(femalecardcolor==activecardcolor){
        femalecardcolor=inactivecardcolor;
        malecardcolor=activecardcolor;
      }
      else{
        femalecardcolor=activecardcolor;
        malecardcolor=inactivecardcolor;
      }
    }
  }

   */




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        //1 for male
                       // updatecolorr(Gender.male);
                        selectedgender=Gender.male;

                      });
                    },
                      child: Mycontainer(colourr:selectedgender==Gender.male? activecardcolor:inactivecardcolor,
                          mywidgetchild: Childmaker(myicoon: FontAwesomeIcons.mars,txt:'Male' ) )),

                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        //1 for male
                       // updatecolorr(Gender.female);

                        selectedgender=Gender.female;

                      });

                    }
                    ,
                    child: Mycontainer(colourr:selectedgender==Gender.female? activecardcolor:inactivecardcolor,
                      mywidgetchild: Childmaker(myicoon: FontAwesomeIcons.venus,txt:'FeMale' )
                    ),
                  ),
                )

              ],
            ),
          ),
          Expanded(
            child:

            Mycontainer(colourr:Color(0xFF1D1E33) ,
              mywidgetchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: mytextstyle,

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //below toe line for same lining
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,//without it will cruss


                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: mynumberstyle,

                      ),
                      Text(
                        'cm',
                        style: mytextstyle,

                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTickMarkColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor:  Color(0x24EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),

                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,

                    //  divisions: 10,
                      //active color is provided ovveriding in above
                    //  activeColor: Colors.red,
                      inactiveColor: Colors.greenAccent,
                      onChanged: (double newvalue){
                        setState(() {
                          height=newvalue.round();
                        });

                      }
                      ,


                    ),
                  )
                ],
              ),
            ),


          ),
         Expanded(
           child: Row(
             children: <Widget>[
               Expanded(
                 child:Mycontainer(colourr:Color(0xFF1D1E33) ,
                   mywidgetchild: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Text(
                         'WEIGHT'
                             ,style: mytextstyle,
                       ),
                       Text(
                         weight.toString(),
                         style: mynumberstyle,

                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Myroundbutton(
                             myicon: FontAwesomeIcons.plus,
                             function: () {
                               setState(() {
                                 weight++;
                               });
                             }

                           ),
                           SizedBox(
                             width: 10,
                           ),
                           Myroundbutton(
                             myicon: FontAwesomeIcons.minus,
                             function: (){
                               setState(() {
                                 weight--;
                               });
                             },
                           ),
                         ],
                       )
                     ],
                   ),


                 ),

               ),
               Expanded(
                 child:Mycontainer(colourr:Color(0xFF1D1E33) ,
                   mywidgetchild: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Text(
                         'AGE'
                         ,style: mytextstyle,
                       ),
                       Text(
                         age.toString(),
                         style: mynumberstyle,

                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Myroundbutton(
                               myicon: FontAwesomeIcons.plus,
                               function: () {
                                 setState(() {
                                   age++;
                                 });
                               }

                           ),
                           SizedBox(
                             width: 10,
                           ),
                           Myroundbutton(
                             myicon: FontAwesomeIcons.minus,
                             function: (){
                               setState(() {
                                 age--;
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
              Calculation calc=Calculation(heightt: height,waightt: weight);

              Navigator.push(context,MaterialPageRoute(builder: (context)=>Resultpage(
                bmiresult: calc.mybmi(),
                condition: calc.bmicondition(),
                mysug: calc.suggetion(),

              )));

            },
            child: Container(


              color: Colors.green,
              child: Center(
                child: Text('Calculate BMI',
                  style: mytextstyle,

                ),
              ),
              height: 50.0,
                width: double.infinity,
              margin: EdgeInsets.only(top: 15),
            ),
          ),

        ],
      )
    );
  }

}
class Myroundbutton extends StatelessWidget {
  Myroundbutton({this.myicon,this.function});
  final IconData myicon;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      child: Icon(myicon),
      onPressed: function,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),


    );
  }
}

