import 'dart:html';

import 'package:flutter/material.dart';
import 'package:netflix/Getstarted.dart';
import 'package:netflix/Privacy.dart';
import 'package:netflix/SignInpage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                    color: Colors.redAccent.shade700,
                                    onPressed: () async {
                                      var navigationResult =
                                          await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Getstarted()),
                                      );
                                      if (navigationResult == true) {
                                        showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  title: Text("Success"),
                                                ));
                                      }
                                    })))),
                Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(left: 30),
                    child: Positioned(
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                            child: Text(
                              "PRIVACY",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            color: Colors.black12,
                            onPressed: () async {
                              var navigationResult = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Privacy()),
                              );
                              if (navigationResult == true) {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Text("Success"),
                                        ));
                              }
                            }))),
                Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 45),
                    child: Positioned(
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            color: Colors.black12,
                            onPressed: () async {
                              var navigationResult = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInpage()),
                              );
                              if (navigationResult == true) {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Text("Success"),
                                        ));
                              }
                            }))),
              ],
            ),
          ),
        ));
  }
}
