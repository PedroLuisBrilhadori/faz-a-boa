import 'package:flutter/cupertino.dart';

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

class PageModel {
  final String title;
  final String subTitle;
  final bool emailSended;
  final List<FieldModel> fields;

  PageModel(
      {required this.title,
      required this.subTitle,
      required this.emailSended,
      required this.fields});
}

final PageModel sendCode = PageModel(
    title: 'Redefinir Senha',
    subTitle:
        'Esqueceu a senha? Digite seu e-mail abaixo para começarmos a redefinir.',
    emailSended: false,
    fields: [
      FieldModel(
          controller: TextEditingController(),
          label: 'Email',
          textInputType: TextInputType.emailAddress),
      FieldModel(
          controller: TextEditingController(),
          label: 'CPF',
          textInputType: TextInputType.number),
    ]);

final PageModel resetPassword = PageModel(
    title: 'Redefinir Senha',
    subTitle:
        'Um e-mail com um código de confirmação foi enviado, insira o código e redifina sua senha!',
    emailSended: true,
    fields: [
      FieldModel(
          controller: TextEditingController(),
          label: 'Codigo',
          textInputType: TextInputType.text),
      FieldModel(
          controller: TextEditingController(),
          label: 'Senha',
          textInputType: TextInputType.text,
          passwordField: true),
      FieldModel(
          controller: TextEditingController(),
          label: 'Confirmar Senha',
          textInputType: TextInputType.text,
          passwordField: true),
    ]);