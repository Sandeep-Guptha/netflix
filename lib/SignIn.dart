//import 'dart:html';

import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.network(
                'https://assets.brand.microsites.netflix.io/assets/f8b5b940-81a4-11e9-bf79-066b49664af6.gif?v=2'),
          ),
        ],
      ),
    );
  }
}
