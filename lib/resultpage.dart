import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/customing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'package:bmi_calculator/resultpage.dart';
class Resultpage extends StatelessWidget {

  final String bmiresult;
  final String condition;
  final String mysug;
  Resultpage({@required this.bmiresult,@required this.condition,@required this.mysug});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Text(
                  'Your result',
                  style: myBIGtextstyle,

                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Mycontainer(
              colourr: activecardcolor,
              mywidgetchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    condition,
                    style: mymidiumtextstyle,
                  ),
                  Text(
                    bmiresult,
                    style: mynumberstyle,
                  ),
                  Text(
                    mysug,
                    textAlign: TextAlign.center,
                    style: mymidiumtextstyle,
                  ),

                ],
              ),
            ),

          ),
          GestureDetector(
            onTap: (){
              //Navigator.push(context,MaterialPageRoute(builder: (context)=>InputPage()));
              Navigator.pop(context);

            },
            child: Container(


              color: Colors.green,
              child: Center(
                child: Text('ReCalculate BMI',
                  style: mytextstyle,

                ),
              ),
              height: 50.0,
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
            ),
          ),




        ],
      ),

    );
  }
}
