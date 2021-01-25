import 'package:flutter/material.dart';
import 'package:quizApp/Screens/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wpp roxo',
      theme: ThemeData(
        primaryColor: Color(0xfff48fb1),
        primaryColorLight: Color(0xffba68c8),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
