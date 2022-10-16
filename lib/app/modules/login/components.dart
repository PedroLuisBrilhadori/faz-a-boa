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

class PasswordField extends StatefulWidget {
  final String label;
  final TextEditingController? variable;

  const PasswordField({Key? key, required this.label, this.variable})
      : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscure = true;
    
  @override
  Widget build(BuildContext context) {

    return Container(
        margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
        child: TextFormField(
            obscureText: isObscure,
            style: const TextStyle(fontSize: 22),
            controller: widget.variable,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                labelText: widget.label,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                border: const UnderlineInputBorder())));
  }
}

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