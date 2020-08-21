
import 'package:flutter/material.dart';

class Childmaker extends StatelessWidget {
  Childmaker({this.myicoon,this.txt}){}
  final IconData myicoon;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myicoon,



          color: Colors.white,


          size: 88.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
            txt
        )
      ],
    );
  }
}

class Mycontainer extends StatelessWidget {
  Mycontainer({@required this.colourr,this.mywidgetchild}){}
  final Color colourr;
  final Widget mywidgetchild;



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: mywidgetchild,

      decoration: BoxDecoration(
        color: colourr,
        borderRadius: BorderRadius.circular(10.0),


      ),
    );
  }
}
