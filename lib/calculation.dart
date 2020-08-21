

import 'dart:math';

class Calculation{
  Calculation({this.heightt,this.waightt});
  final int heightt;
  final int waightt;
  double _bmi;
  String mybmi(){
    _bmi=waightt/pow(heightt/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String bmicondition(){
    if( _bmi>25){
      return 'OVERWAIGHT';

    }
    else if(_bmi>18.5){
      return 'NORMOL';

    }
    else{
      return  'UNDERWAIGHTtt';

    }
  }
  String suggetion(){
    if( _bmi>25){
      return 'Eat a bit less..run as much you can.keep dieting';

    }
    else if(_bmi>18.5){
      return 'NORMOL..its ok..you are perfect';

    }
    else{
      return  'UNDERWAIGHT...eat much and more';

    }
  }




}
