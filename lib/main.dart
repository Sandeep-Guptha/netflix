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
          backgroundColor: Colors.black,
          body: Center(
            child: Container(
              margin: EdgeInsets.only(top: 34),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "Assets/netflix-image.webp",
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                      child: Container(
                    color: Colors.black45,
                  )),
                  Positioned(
                      height: 35,
                      child: Image.asset(
                        "Assets/netflix logo.jpg",
                      )),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 280),
                    child: Positioned(
                        child: Text("Unlimited",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 240),
                    child: Positioned(
                        child: Text("Entertainment,",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 200),
                    child: Positioned(
                        child: Text("one low price.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 140),
                    child: Positioned(
                        child: Text("Everything on Netflix",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 20,
                            ))),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 115),
                    child: Positioned(
                        child: Text("Satrting at just Rs.199/-",
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 20,
                            ))),
                  ),
                  Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 45),
                      child: Positioned(
                          child: SizedBox(
                              width: 350,
                              height: 45,
                              child:
                                  // ignore: deprecated_member_use
                                  RaisedButton(
                                      child: Text(
                                        "GET STARTED",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      color: Colors.red.shade900,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  GETSTARTED(),
                                            ));
                                      })))),
                ],
              ),
            ),
          )),
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
