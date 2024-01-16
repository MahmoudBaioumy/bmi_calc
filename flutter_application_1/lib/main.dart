import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmiscreen(),
    );
  }
}
