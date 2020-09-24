import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[900],
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage("images/samad.jpg"),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical:10.0),
              child: Text(
                "Abdul Samad",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  letterSpacing: 1.0,
                  fontSize: 50.0,
                  color: Colors.brown[300],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: Text("Flutter Developer",
                  style: TextStyle(
                    color: Colors.brown[300],
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0,
                  )),
            ),
            Card(
              color: Colors.brown[500],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.brown[200],
                  ),
                  title: Text(
                    '+91 74173 49854',
                    style: TextStyle(
                        color: Colors.brown[200],
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0),
                  )),
            ),
            Card(
              color: Colors.brown[500],
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.brown[200],
                ),
                title: Text(
                  "khan.samad2045@gmail.com",
                  style: TextStyle(
                      color: Colors.brown[200],
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 16.0),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
