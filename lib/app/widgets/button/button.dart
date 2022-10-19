import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final String label;
  final EdgeInsetsGeometry? margin;
  final Color color;
  final Color textColor;
  final double fontSize;
  final void Function()? onPressed;

  const ButtonApp(
      {super.key,
      this.margin,
      required this.fontSize,
      required this.label,
      required this.color,
      required this.textColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin != null ? margin : const EdgeInsets.all(0),
      child: TextButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(fontSize: fontSize, color: textColor),
        ),
      ),
    );
  }
}
