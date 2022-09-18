import 'package:flutter/material.dart';

import 'package:faz_a_boa/view/main_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'faz A boa',
    initialRoute: 'main',
    routes: {
      'main': (context) => const MainScreen(),
    },
  ));
}
