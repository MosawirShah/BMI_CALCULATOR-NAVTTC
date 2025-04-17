import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/result.dart';
import 'package:bmi_calculator/theme_constant.dart';
import 'package:bmi_calculator/theme_manager.dart';
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
  @override
  void initState() {
    themeManager.addListener(themeChange);
    super.initState();
  }

  themeChange() {
    if (mounted) {
      setState(() {});
    }
  }

  Gender? selectedGender;

  ThemeManager themeManager = ThemeManager();

  ///COLORS
  Color activeColor = Colors.tealAccent;
  Color inActiveColor = Colors.teal;

  int height = 150;
  int weight = 74;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    print("The Value of Var $selectedGender");

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        switchTheme: SwitchThemeData(
            thumbColor: MaterialStateProperty.all<Color>(Colors.tealAccent)),
        scaffoldBackgroundColor: Colors.green[100],
        sliderTheme: SliderThemeData(
            activeTrackColor: Colors.tealAccent, thumbColor: Colors.tealAccent),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),
        switchTheme: SwitchThemeData(
            thumbColor: MaterialStateProperty.all<Color>(Colors.pink)),
        scaffoldBackgroundColor: Colors.black54,
        sliderTheme: SliderThemeData(
            activeTrackColor: Colors.pink, thumbColor: Colors.pink),
      ),
      themeMode: themeManager.themeMode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // backgroundColor: Colors.teal,
          title: Text(
            "BMI Calculator",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Switch(
                value: themeManager.themeMode == ThemeMode.dark,
                onChanged: (newValue) {
                  themeManager.changeTheme(newValue);
                }),
          ],
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
                      containerColor: selectedGender == Gender.male ? themeManager.themeMode == ThemeMode.light ? activeColor : Colors.pink : themeManager.themeMode == ThemeMode.light ? inActiveColor : Colors.white10,
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
                            ? themeManager.themeMode == ThemeMode.light
                                ? activeColor
                                : Colors.pink
                            : themeManager.themeMode == ThemeMode.light
                                ? inActiveColor
                                : Colors.white10,
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
              containerColor: themeManager.themeMode == ThemeMode.light
                  ? inActiveColor
                  : Colors.white10,
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
                        height.toString(),
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
                    value: height.toDouble(),
                    max: 180,
                    min: 120,
                    divisions: 60,
                    label: height.toStringAsFixed(1),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                        // print("height :$height");
                      });
                    },
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
                    containerColor: themeManager.themeMode == ThemeMode.light
                        ? inActiveColor
                        : Colors.white10,
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
                    containerColor: themeManager.themeMode == ThemeMode.light
                        ? inActiveColor
                        : Colors.white10,
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
            CustomBottomContainer(height: height, weight: weight,)
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

class CustomBottomContainer extends StatelessWidget {
  int height;
  int weight;
   CustomBottomContainer({super.key,required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
       CalculateBMI calculateBMI = CalculateBMI(calHeight: height, calWeight: weight);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ResulClass(
          bmi: calculateBMI.calculatedBMI(),
          resultText: calculateBMI.getResultText(),
          interpretation: calculateBMI.getInterpretation(),
        )));
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 60,
        width: double.infinity,
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.teal
            : Colors.pink,
        child: Center(
          child: Text(
            "CALCULATE BMI",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
