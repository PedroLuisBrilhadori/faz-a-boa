import 'package:flutter/cupertino.dart';

class FieldModel {
  String label;
  bool passwordField;
  EdgeInsetsGeometry marign;
  TextInputType textInputType;
  TextEditingController controller;
  AutovalidateMode? autovalidateMode;
  String? Function(String?)? validator;
  final void Function(String)? onChanged;

  FieldModel({
    required this.label,
    required this.controller,
    this.marign = const EdgeInsets.only(top: 15, left: 30, right: 30),
    this.passwordField = false,
    this.textInputType = TextInputType.text,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.validator,
    this.onChanged,
  });
}
