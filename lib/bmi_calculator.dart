import 'dart:math';

class CalculateBMI{
  double calWeight;
  double calHeight;
  double bmi = 15;
  CalculateBMI({required this.calHeight, required this.calWeight});

 String calculatedBMI(){
    bmi = calWeight/pow(calHeight, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResultText(){
   if(bmi < 18){
     return "Under Weight";
   }else if(bmi > 18 && bmi < 25){
     return "NORMAL";
   }else {
     return "Over Weight";
   }
  }

  String getInterpretation(){
    if(bmi < 18){
      return "You are lower weight than normal, Please eat more";
    }else if(bmi > 18 && bmi < 25){
      return "You have normal weight. Good job!";
    }else {
      return "You are higher weight than normal, Please Continue exercise";
    }
  }
}