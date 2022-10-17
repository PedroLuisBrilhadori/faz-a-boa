import 'package:flutter/cupertino.dart';

Widget header({
  required String title,
  required String subTitle,
}) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text(title,
        style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
    Column(
      children: [Text(subTitle, style: const TextStyle(fontSize: 19))],
    ),
  ]);
}
