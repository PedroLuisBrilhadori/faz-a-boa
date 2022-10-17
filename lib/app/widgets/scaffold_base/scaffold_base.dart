import 'package:flutter/material.dart';

class ScaffoldBase extends StatelessWidget {
  final Widget child;
  const ScaffoldBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
    );
  }
}
