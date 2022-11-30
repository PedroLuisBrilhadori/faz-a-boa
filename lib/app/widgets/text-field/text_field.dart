import 'package:flutter/material.dart';

class FzTextField extends StatefulWidget {
  final String label;
  final bool passwordField;
  final EdgeInsetsGeometry marign;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final void Function(String)? onChanged;

  const FzTextField({
    Key? key,
    this.validator,
    this.onChanged,
    // required
    required this.label,
    required this.controller,
    // default
    this.passwordField = false,
    this.textInputType = TextInputType.text,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.marign = const EdgeInsets.only(top: 15, left: 30, right: 30),
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
        keyboardType: widget.textInputType,
        autovalidateMode: widget.autovalidateMode,
        style: const TextStyle(fontSize: 22),
        controller: widget.controller,
        decoration: widget.passwordField
            ? passwordDecoration()
            : noPasswordDecoration(),
        validator: widget.validator,
        onChanged: widget.onChanged,
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
