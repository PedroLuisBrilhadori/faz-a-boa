import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app.module.dart';
import 'app/app.widget.dart';

void main() =>
    runApp(ModularApp(module: AppModule(), child: const AppWidget()));
