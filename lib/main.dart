import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:faz_a_boa/view/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  SystemChrome.setSystemUIChangeCallback((systemOverlaysAreVisible) =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack));

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'faz A boa',
    initialRoute: 'main',
    routes: {
      'main': (context) => const MainScreen(),
    },
  ));
}
