import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/app_bar/app_bar.dart';

class AppContent extends StatelessWidget {
  final String title;
  final Widget content;
  final String? subTitle;
  final Widget? appBarChild;
  final void Function() onPressedConfig;

  const AppContent({
    super.key,
    required this.title,
    required this.content,
    required this.onPressedConfig,
    this.appBarChild,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        FZBAppBar(
          onPressedConfig: onPressedConfig,
          title: title,
          subTitle: subTitle,
          child: appBarChild is Widget ? appBarChild : Container(),
        ),
        Expanded(child: content),
      ],
    );
  }
}
