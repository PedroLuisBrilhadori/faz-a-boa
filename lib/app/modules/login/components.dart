import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

Widget loginButton({
  required String label,
  required BuildContext context,
  void Function()? onPressed,
}) {
  final double screenWidthSize = MediaQuery.of(context).size.width;
  return Container(
    margin: const EdgeInsets.only(top: 30),
    child: TextButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(screenWidthSize - 48, 50),
          backgroundColor: Colors.black),
      onPressed: onPressed ?? () => {},
      child: Text(
        label,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
  );
}

Widget connectWithButton({
  required Buttons button,
  required String label,
  void Function()? onPressed,
}) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    SignInButton(
      button,
      text: label,
      onPressed: onPressed ?? () {},
    ),
  ]);
}
