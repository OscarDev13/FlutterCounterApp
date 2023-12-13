/*
Imports:
1.- Flutter packages
2.- third party packages
3.- Own packagees
*/


import 'package:flutter/material.dart';
import 'package:counter_app/screens/counter_screen.dart';

// import 'package:counter_app/screens/other_screen.dart';
// import 'package:counter_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { // it needs to the app can be a Widget
    return const MaterialApp( // 
    debugShowCheckedModeBanner:false, // not show the debug banner
      home: CounterScreen(),
    );
  }
}