import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.grey.shade600,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xffFC7B41)),
      ),
      title: 'BMI Calculator',
      home: MyHomePage(),
    );
  }
}
