import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDice = 1;
  int rightDice = 1;
  void roll() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.grey[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:
                      Image(image: AssetImage('images/dice-png-$leftDice.png')),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                      image: AssetImage('images/dice-png-$rightDice.png')),
                ))
              ],
            ),
            RaisedButton(
              color: Colors.deepOrange[300],
              onPressed: roll,
              child: Text(
                'Roll',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
