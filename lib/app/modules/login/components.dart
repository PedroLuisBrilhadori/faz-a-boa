import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

Widget loginButton(String label, BuildContext context) {
  final double screenWidthSize = MediaQuery.of(context).size.width;
  return Container(
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(screenWidthSize - 48, 50),
            backgroundColor: Colors.black),
        child: Text(
          label,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        onPressed: () {},
      ));
}

Widget connectWithButton(Buttons button, String label) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    SignInButton(
      button,
      text: label,
      onPressed: () {},
    ),
  ]);
}
