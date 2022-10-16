import 'dart:isolate';

import 'package:flutter/material.dart';

class FzTextField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final EdgeInsetsGeometry marign;
  final bool passwordField;
  final TextInputType textInputType;
  final String? Function(String?)? validator;

  const FzTextField({
    Key? key,
    required this.label,
    required this.controller,
    this.marign = const EdgeInsets.only(top: 15, left: 30, right: 30),
    this.passwordField = false,
    this.textInputType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  @override
  State<FzTextField> createState() => FzTextFieldState();
}

class FzTextFieldState extends State<FzTextField> {
  bool isObscure = false;

  @override
  void initState() {
    isObscure = widget.passwordField;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.marign,
      child: TextFormField(
        obscureText: isObscure,
        style: const TextStyle(fontSize: 22),
        controller: widget.controller,
        decoration: widget.passwordField
            ? passwordDecoration()
            : noPasswordDecoration(),
        validator: widget.validator,
      ),
    );
  }

  InputDecoration passwordDecoration() {
    return InputDecoration(
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
        border: const UnderlineInputBorder());
  }

  InputDecoration noPasswordDecoration() {
    return InputDecoration(
        labelText: widget.label,
        labelStyle: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        border: const UnderlineInputBorder());
  }
}
