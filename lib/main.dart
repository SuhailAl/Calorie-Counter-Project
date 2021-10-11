import 'package:flutter/material.dart';
import 'package:calorie_counter_project/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //pass down whether we are in an integration test or not
      home: HomeScreen(),
    );
  }
}
