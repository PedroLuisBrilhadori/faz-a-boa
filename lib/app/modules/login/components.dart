import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

Widget textField(String label, TextEditingController variable) {
  return Container(
      margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
      child: TextFormField(
          style: const TextStyle(fontSize: 22),
          controller: variable,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              border: const UnderlineInputBorder())));
}

Widget loginButton(String label, BuildContext context) {
  final double screenWidthSize = MediaQuery.of(context).size.width;
  return Container(
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(screenWidthSize - 48, 50), primary: Colors.black),
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
