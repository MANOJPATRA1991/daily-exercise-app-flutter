import 'package:daily_exercise_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:daily_exercise_app/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Exercise App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: COLORS['BACKGROUND'],
        textTheme: Theme.of(context).textTheme.apply(displayColor: COLORS['TEXT']),
      ),
      home: HomeScreen(),
    );
  }
}
