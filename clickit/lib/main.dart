import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text(
          'ClickIt',
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              shape: CircleBorder(),
              color: Colors.blue[800],
              padding: EdgeInsets.all(100.0),
              onPressed: () {
                setState(() {
                  clickCounter += 1;
                });
              },
              child: Text(
                'CLICK ME',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                ),
              ),
            ),
            Text(
              'Clicks $clickCounter',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
