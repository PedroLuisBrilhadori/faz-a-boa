import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/button/button.dart';

class AlertApp extends StatelessWidget {
  final String title;
  final String? message;
  final Widget? content;
  final List<Widget>? actions;

  const AlertApp({
    super.key,
    required this.title,
    this.message,
    this.content,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: Text(title)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message ?? ''),
          content ?? Container(),
        ],
      ),
      actions: actions ??
          [
            ButtonApp(
              fontSize: 16,
              label: 'Voltar',
              color: Colors.red.shade700,
              textColor: Colors.white,
              onPressed: () => Navigator.pop(context, 'Voltar'),
            )
          ],
    );
  }
}
