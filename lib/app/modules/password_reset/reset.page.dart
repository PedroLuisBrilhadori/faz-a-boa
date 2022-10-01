import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../login/components.dart';

bool isButtonActive = true;

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  bool screenState = false;

  final List<FieldModel> fields = [
    FieldModel(
        controller: TextEditingController(),
        label: 'Email',
        textInputType: TextInputType.emailAddress),
    FieldModel(
        controller: TextEditingController(),
        label: 'CPF',
        textInputType: TextInputType.number),
  ];

  final List<FieldModel> fadsields = [
    FieldModel(
        controller: TextEditingController(),
        label: 'Email',
        textInputType: TextInputType.emailAddress),
    FieldModel(
        controller: TextEditingController(),
        label: 'CPF',
        textInputType: TextInputType.number),
    FieldModel(
        controller: TextEditingController(),
        label: 'Senha',
        textInputType: TextInputType.number,
        passwordField: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HEADER
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 120.0),
                    const Text('Redefinir Senha',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 12.0),
                    HeaderText(
                      screenState: screenState,
                    ),
                  ]),
            ),
            //TEXT FIELDS
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40.0),
                BodyFields(fields: screenState ? fields : fadsields),
              ],
            ),
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
}

class HeaderText extends StatelessWidget {
  final bool screenState;

  const HeaderText({Key? key, required this.screenState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (screenState) {
      return Column(
        children: const [
          Text(
              'Esqueceu a senha? Digite seu e-mail abaixo para começarmos a redefinir.',
              style: TextStyle(fontSize: 19))
        ],
      );
    }

    return Column(
      children: const [
        Text(
            'Um e-mail com um código de confirmação foi enviado, insira o código e redifina sua senha!',
            style: TextStyle(fontSize: 19))
      ],
    );
  }
}

/*------------------------------------------*/
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
    /*required this.color*/
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

class FieldModel {
  TextEditingController controller;
  String label;
  TextInputType textInputType;
  bool passwordField;

  FieldModel(
      {required this.controller,
      required this.label,
      required this.textInputType,
      this.passwordField = false});
}
