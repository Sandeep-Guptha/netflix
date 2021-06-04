//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 32),
                    height: 600,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 32),
                  height: 748,
                  child: Image.asset(
                    "Assets/netflix-image.webp",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              height: 800,
              color: Colors.black38,
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Image.asset(
                "Assets/netflix logo.jpg",
                height: 30,
              ),
            ),
            /*Container(
              margin: EdgeInsets.only(top: 710, left: 5),
              width: 350,
              height: 50,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GETSTARTED()),
                  );
                },
                color: Colors.red.shade900,
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),*/
            Container(
              margin: EdgeInsets.only(top: 200),
              alignment: Alignment.center,
              child: Text(
                "Unlimited",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 300),
              alignment: Alignment.center,
              child: Text(
                "Entertainment,",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 390),
              alignment: Alignment.center,
              child: Text(
                "one low price.",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 500),
              alignment: Alignment.center,
              child: Text(
                "Everything on Netflix,",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 550),
              alignment: Alignment.center,
              child: Text(
                "Starting at just Rs.199/-",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 710, left: 5),
              width: 350,
              height: 50,
              // ignore: deprecated_member_use
              child:
                  // ignore: deprecated_member_use
                  RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GETSTARTED()),
                  );
                },
                color: Colors.red.shade900,
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GETSTARTED extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
    );
  }
}
