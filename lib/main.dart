import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/services.dart';

import 'app/app.module.dart';
import 'app/app.widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);

  SystemChrome.setSystemUIChangeCallback((systemOverlaysAreVisible) =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.top]));

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
