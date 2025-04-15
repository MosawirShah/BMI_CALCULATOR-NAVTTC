import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

enum Gender { male, female }

class _BMICalculatorState extends State<BMICalculator> {
  Gender? selectedGender;

  ///COLORS
  Color activeColor = Colors.tealAccent;
  Color inActiveColor = Colors.teal;

  double height = 150;
  int weight = 74;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    print("The Value of Var $selectedGender");

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
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        print("The Value of Var $selectedGender");
                      });
                    },
                    child: CustomContainer(
                      containerColor: selectedGender == Gender.male
                          ? activeColor
                          : inActiveColor,
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
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                          print("The Value of Var $selectedGender");
                        });
                      },
                      child: CustomContainer(
                        containerColor: selectedGender == Gender.female
                            ? activeColor
                            : inActiveColor,
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
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
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
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white60,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "180",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Slider(
                    value: height,
                    max: 180,
                    min: 120,
                    divisions: 60,
                    label: height.toStringAsFixed(1),
                    onChanged: (value) {
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
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: CustomContainer(
                    containerColor: Colors.teal,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            CustomBottomContainer()
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
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 2, top: 10),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(15)),
      child: myChild,
    );
  }
}


class CustomBottomContainer extends StatefulWidget {
  const CustomBottomContainer({super.key});

  @override
  State<CustomBottomContainer> createState() => _CustomBottomContainerState();
}

class _CustomBottomContainerState extends State<CustomBottomContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ResulClass()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 60,
        width: double.infinity,
        color: Colors.teal,
        child: Center(
          child: Text(
            "CALCULATE BMI",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
