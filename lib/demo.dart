import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class DemoScreen extends StatefulWidget {

  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text('Flutter Custom Rolling Switch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Do you like Flutter?",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20),
              child: LiteRollingSwitch(
                value: true,
                textOn: 'Patient',
                textOff: 'Doctor',
                colorOn: Colors.cyan,
              //  colorOff: Colors.red[400],
                iconOn: Icons.accessible_rounded,
                iconOff: Icons.wheelchair_pickup_outlined,
                animationDuration: Duration(milliseconds: 250),
                onChanged: (bool state) {
                  print('turned ${(state) ? 'yes' : 'no'}');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}