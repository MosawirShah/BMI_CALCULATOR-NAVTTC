import 'package:flutter/material.dart';

class ResulClass extends StatefulWidget {
  const ResulClass({super.key});

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
    );
  }
}
