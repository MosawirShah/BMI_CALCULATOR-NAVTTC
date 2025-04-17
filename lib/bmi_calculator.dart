import 'dart:math';

class CalculateBMI{
  int calWeight;
  int calHeight;
  double? bmi;
  CalculateBMI({required this.calHeight, required this.calWeight});

 String calculatedBMI(){
    bmi = calWeight/pow(calHeight/100, 2);
    return bmi!.toStringAsFixed(1);
  }

  String getResultText(){
   if(bmi! != null){
     if(bmi! > 18){
       return "NORMAL";
     }else if(bmi!>= 25){
       return "OverWeight";
     }else {
       return "NORMAL";
     }
   }else{
     bmi = 23.3;
     return "Unknown Value";

   }
  }

  String getInterpretation(){
    if(bmi! >= 25){
      return "You are higher weight than normal, Please Continue exercise";
    }else if(bmi! > 18){
      return "You have normal weight. Good job!";
    }else {
      return "You are lower weight than normal, Please eat more";
    }
  }
}