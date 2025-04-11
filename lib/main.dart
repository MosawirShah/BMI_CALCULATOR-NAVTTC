import 'package:flutter/material.dart';

import 'add.dart';

void main(){
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  
  

  const BMICalculator({super.key});
  
  @override
  Widget build(BuildContext context) {
    Add(a: 2, b: 3);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: Text("BMI Calculator",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ),
        body: Column(
          children: [
            ///1st WIDGET of THE COLUMN
            Expanded(
              child: Row( 
                children: [
                  Expanded(
                    child: CustomContainer(containerColor: Colors.teal,)
                  ),
                  Expanded(
                    child: CustomContainer(containerColor: Colors.teal,),
                  ),
                ],
              ),
            ), 
            
            ///2ND WIDGET OF COLUMN
            Expanded(
              child: CustomContainer(containerColor: Colors.blue,)
            ),
            ///3RD WIDGET OF COLUMN
            Expanded(
              child: Row(children: [
                Expanded(
                  child: CustomContainer(containerColor: Colors.teal,)
                ),
                Expanded(
                  
                  child: CustomContainer(containerColor: Colors.teal,)
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}


class CustomContainer extends StatelessWidget{

  CustomContainer({required this.containerColor});

  Color containerColor;


   @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15)
      ),
      
    );
  }
}