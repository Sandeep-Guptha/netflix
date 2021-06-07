import 'package:flutter/material.dart';
import 'package:netflix/SignInpage.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'dart:html';

class Getstarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Container(
              child: Image.asset(
                "Assets/netflix big logo.png",
                height: 65,
              ),
            ),
            Container(
              width: 70,
              child:
                  // ignore: deprecated_member_use
                  RaisedButton(
                      child: Text(
                        "HELP",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      color: Colors.black,
                      onPressed: () {
                        const url = 'https://help.netflix.com/en/';
                        launchURL(url);
                      }),
            ),
            Container(
              width: 85,
              child:
                  // ignore: deprecated_member_use
                  RaisedButton(
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      color: Colors.black,
                      onPressed: () async {
                        var navigationResult = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInpage()),
                        );
                        if (navigationResult == true) {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text("Success"),
                                  ));
                        }
                      }),
            ),
          ],
        ),
      ),
      body: Forms(),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final _keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(key: _keys, child: SingleChildScrollView());
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
