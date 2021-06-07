//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:netflix/Home.dart';
import 'package:netflix/SignIn.dart';

//import 'dart:html';

class SignInpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: ModalRoute.of(context)?.canPop == true
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                onPressed: () => Navigator.of(context).pop(Home()),
              )
            : null,
        backgroundColor: Colors.black,
        title: Container(
          margin: EdgeInsets.only(right: 0),
          child: Image.asset(
            "Assets/netflix big logo.png",
            height: 60,
          ),
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
    return Form(
      key: _keys,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 100),
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade700,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: "Email or phone number",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty || value == null) {
                      return "Please enter the mobile number or email adress";
                    } else if (value != "sandeepguptha9@gmail.com") {
                      return "Please enter the correct  mobile number or email adress";
                    } else {}
                    return null;
                  },
                )),
            Container(
                margin: EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade700,
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700)),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty || value == null) {
                      return "Please enter the Password";
                    } else if (value != "12345678") {
                      return "Please enter the correct Password";
                    } else {}
                    return null;
                  },
                )),
            Container(
              margin: EdgeInsets.all(10),
              width: 325,
              height: 50,
              decoration: BoxDecoration(
                  //color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(3.5))),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  if (_keys.currentState.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Successfully Logged In")));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  } else
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Login Failed")));
                },
                color: Colors.black,
                //Width: 320,
                splashColor: Colors.black45,
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Need help?",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "New to Netflix? Sign up now.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Sign-in is protected by Google reCAPTCHA to ensure",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: 10),
              child: Text(
                "you're not a bot. Leran more.",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
