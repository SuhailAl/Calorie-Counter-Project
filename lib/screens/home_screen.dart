import 'package:flutter/material.dart';
import 'package:calorie_counter_project/screens/weight_screen.dart';
import 'package:calorie_counter_project/screens/count_screen.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF407294),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Spacer(flex: 4),
                Text(
                  "Workouts",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Color(0xFFFFFFFF)),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.25, color: Color(0xFF407294)),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  height: 164,
                  width: 337,
                  child: WorkoutList(),
                ),
                Spacer(flex: 6),
              ]))),
    );
  }
}

class WorkoutList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          height: 39,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xFF407294))),
          ),
          child: ListTile(
              title: Text("Second Screen",
                  style: TextStyle(fontSize: 24, color: Color(0xFF407294))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WeightScreen()),
                );
              }),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          height: 39,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xFF407294))),
          ),
          child: ListTile(
              title: Text("Third Screen",
                  style: TextStyle(fontSize: 24, color: Color(0xFF407294))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CountScreen()),
                );
              }),
        ),
      ],
    );
  }
}
