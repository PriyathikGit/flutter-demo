import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/onboardingScreen.dart';


void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardingScreen(),
    );
  }
}
