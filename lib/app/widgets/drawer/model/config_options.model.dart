import 'package:flutter/material.dart';

class ConfigOption {
  final String label;
  final Color color;
  final IconData icon;
  final void Function() onTap;

  ConfigOption(
      {required this.label,
      required this.color,
      required this.icon,
      required this.onTap});
}
