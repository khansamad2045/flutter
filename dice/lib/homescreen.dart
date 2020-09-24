import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftdice = 1;
  int rightdice = 1;

  void roll() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15),
                  child:
                      Image(image: AssetImage('images/dice-png-$leftdice.png')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image(
                      image: AssetImage('images/dice-png-$rightdice.png')),
                ))
              ],
            ),
            RaisedButton(
              onPressed: roll,
              child: Text(
                "Roll",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
