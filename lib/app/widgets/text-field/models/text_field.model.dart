import 'package:flutter/cupertino.dart';

class FieldModel {
  String label;
  TextEditingController controller;
  EdgeInsetsGeometry marign;
  bool passwordField;
  TextInputType textInputType;
  String? Function(String?)? validator;

  FieldModel({
    required this.label,
    required this.controller,
    this.marign = const EdgeInsets.only(top: 15, left: 30, right: 30),
    this.passwordField = false,
    this.textInputType = TextInputType.text,
    this.validator,
  });
}
