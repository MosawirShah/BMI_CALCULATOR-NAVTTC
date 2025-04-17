import 'package:flutter/material.dart';

class ResulClass extends StatefulWidget {

  String resultText;
  String bmi;
  String interpretation;
   ResulClass({super.key,required this.resultText, required this.bmi, required this.interpretation});

  @override
  State<ResulClass> createState() => _ResulClassState();
}

class _ResulClassState extends State<ResulClass> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "BMI Result",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Text(
                "Your Result",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(

              child: Container(
                margin: EdgeInsets.only(left: 25,right: 25),
                decoration: BoxDecoration(color: Colors.white10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.resultText,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    const SizedBox(height: 20,),
                    Text(widget.bmi,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70),),
                    const SizedBox(height:60,),
                    Text(widget.interpretation.toString(),style: TextStyle(),),

                    Container(
                      width: double.infinity,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 60,
                width: double.infinity,
                color: Colors.pink,
                child: Center(
                  child: Text("Re-Calculate BMI",style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                )
                ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
