import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

  double height = 150;
  @override
  Widget build(BuildContext context) {

    print("BUILD METHOD CALLED");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            ///1st WIDGET of THE COLUMN
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: CustomContainer(
                    containerColor: Colors.teal,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 70,
                          color: Colors.white,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                    child: CustomContainer(
                      containerColor: Colors.teal,
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 70,
                            color: Colors.white,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///2ND WIDGET OF COLUMN
            //TODO: SLider Container
            Expanded(
                child: CustomContainer(
              containerColor: Colors.teal,
              myChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT",style: TextStyle(fontSize: 18,color: Colors.white60,fontWeight: FontWeight.bold),),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(height.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                    Text("cm",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],),
                  Slider(value: height,
                      max: 180,
                      min: 120,
                      divisions: 60,
                      label: height.toStringAsFixed(1),
                      onChanged: (value){
                    setState(() {
                      height = value;
                     // print("height :$height");
                    });
                      },
                    activeColor: Colors.pink,
                  )
                ],
              ),
            )),

            ///3RD WIDGET OF COLUMN
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: CustomContainer(
                    containerColor: Colors.teal,
                    myChild: Text(""),
                  )),
                  Expanded(
                      child: CustomContainer(
                    containerColor: Colors.teal,
                    myChild: Text(""),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  CustomContainer({required this.containerColor, required this.myChild});

  Color containerColor;
  Widget myChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5,right: 5,bottom: 2,top: 10),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(15)),
      child: myChild,
    );
  }
}
