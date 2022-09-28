import 'package:flutter/material.dart';

class AppBarIconWidget extends StatefulWidget {
  final BorderRadius borderRadius;
  final IconButton iconButton;

  const AppBarIconWidget(this.borderRadius, this.iconButton, {Key? key})
      : super(key: key);

  @override
  State<AppBarIconWidget> createState() => _AppBarIconWidgetState();
}

class _AppBarIconWidgetState extends State<AppBarIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(25, 118, 210, 1),
          borderRadius: widget.borderRadius,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3.5,
              blurRadius: 5,
            )
          ],
        ),
        child: widget.iconButton);
  }
}
