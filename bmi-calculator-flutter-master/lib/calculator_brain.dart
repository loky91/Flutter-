import 'dart:math';
class CalculateBrain{
  CalculateBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi=0;

  String calculateBMI(){
double _bmi= weight/pow(height/100,2);

return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
return 'overweight';
    }else if(_bmi > 18.5){
return 'Normal';
    }else{
      return 'underweight';
    }
  }

  String getInterpretation(){
    print(_bmi);
    if(_bmi>=25){
      return 'You have a higher than normal Body Weight. Try to exercise more';
    }else if(_bmi>18.5){
      return 'You have a normal Body weight Good Job !!';
    }else{
      return 'You have a lower than normal body Weight. You can eat a bit More !!';
    }
  }
}