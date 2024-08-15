import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'WeightScreen.dart';
import 'HeightScreen.dart';
import 'ResultScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
      routes: { 
        '/weight': (context) => WeightScreen(),
        '/height': (context) => const HeightScreen(),
        '/result': (context) => ResultScreen(),
        //When the application navigates to the route named '/height', the HeightScreen widget will be displayed






      },
    );
  }
} 
