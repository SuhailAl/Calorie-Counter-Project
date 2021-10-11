import 'package:flutter/material.dart';
import 'package:calorie_counter_project/screens/count_screen.dart';

class WeightScreen extends StatefulWidget {
  @override
  _WeightScreenState createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  final currencyAmountTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xFF407294),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_outlined, color: Color(0xFFFFFFFF)),
                iconSize: 25,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Enter bar weight in pounds",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF407294))),
                        Container(
                          height: 42,
                          width: 217,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2.25, color: Color(0xFF407294)),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF407294)),
                            controller: currencyAmountTextEditingController,
                            textAlign: TextAlign.center,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                      ]),
                ),
              ],
            ))));
  }
}
