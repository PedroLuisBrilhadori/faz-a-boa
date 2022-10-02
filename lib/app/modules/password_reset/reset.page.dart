import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/modules/login/components.dart';
import 'package:faz_a_boa/app/modules/password_reset/pages.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  bool emailSent = true;

  @override
  Widget build(BuildContext context) {
    PageModel page = emailSent ? resetPassword : sendCode;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(title: page.title, subTitle: page.subTitle),
            fields(fields: page.fields),
            //BUTTONS
            Column(
              children: [
                const SizedBox(height: 90.0),
                Button(
                  label: 'Enviar',
                  tContext: context,
                  color: Colors.green,
                  onPressed: () => {},
                ),
                const SizedBox(height: 17.0),
                Button(
                  label: 'Voltar',
                  tContext: context,
                  color: Colors.red,
                  onPressed: () => {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget header({
    required String title,
    required String subTitle,
  }) {
    return Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 120.0),
          Text(title,
              style:
                  const TextStyle(fontSize: 27, fontWeight: FontWeight.w700)),
          const SizedBox(height: 12.0),
          Column(
            children: [Text(subTitle, style: const TextStyle(fontSize: 19))],
          ),
        ]));
  }

  Widget fields({required List<FieldModel> fields}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40.0),
        BodyFields(fields: fields),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String label;
  final BuildContext tContext;
  final Color color;
  final void Function() onPressed;

  const Button({
    Key? key,
    required this.label,
    required this.tContext,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidthSize = MediaQuery.of(context).size.width;
    return TextButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(screenWidthSize - 48, 55), backgroundColor: color),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}

class BodyFields extends StatelessWidget {
  final List<FieldModel> fields;
  const BodyFields({Key? key, required this.fields}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: generateFields(),
    );
  }

  List<Widget> generateFields() {
    final List<Widget> widgetFields = [];

    for (var field in fields) {
      if (field.passwordField) {
        widgetFields.add(
            PasswordField(label: field.label, controller: field.controller));
      } else {
        widgetFields.add(textField(
            label: field.label,
            controller: field.controller,
            textInputType: field.textInputType));
      }
    }

    return widgetFields;
  }
}
