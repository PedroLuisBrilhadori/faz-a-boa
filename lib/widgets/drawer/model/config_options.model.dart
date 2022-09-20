import 'package:flutter/material.dart';

class ConfigOption {
  final String title;
  final Color color;
  final IconData leadingIcon;
  final Function ontap;

  ConfigOption(this.title, this.color, this.leadingIcon, this.ontap);
}
