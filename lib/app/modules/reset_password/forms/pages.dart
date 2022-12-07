import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/validators/pass.validator.dart';
import 'package:faz_a_boa/app/validators/code.validator.dart';
import 'package:faz_a_boa/app/widgets/text-field/models/text_field.model.dart';

class PageModel {
  final String title;
  final String subTitle;
  final bool emailSended;
  final List<FieldModel> fields;
  final GlobalKey<FormState> key;

  PageModel({
    required this.title,
    required this.subTitle,
    required this.emailSended,
    required this.fields,
    required this.key,
  });
}

final PageModel sendCode = PageModel(
  key: GlobalKey<FormState>(),
  title: 'Redefinir Senha',
  subTitle:
      'Esqueceu a senha? Digite seu e-mail abaixo para começarmos a redefinir.',
  emailSended: false,
  fields: [
    FieldModel(
      controller: TextEditingController(),
      label: 'Email',
      textInputType: TextInputType.emailAddress,
    ),
  ],
);

final PageModel resetPassword = PageModel(
  key: GlobalKey<FormState>(),
  title: 'Redefinir Senha',
  subTitle:
      'Um e-mail com um código de confirmação foi enviado, insira o código e redifina sua senha!',
  emailSended: true,
  fields: [
    FieldModel(
      controller: TextEditingController(),
      label: 'Codigo',
      textInputType: TextInputType.text,
      validator: (value) {
        return codeValidator(value);
      },
    ),
    FieldModel(
      label: 'Senha',
      passwordField: true,
      controller: TextEditingController(),
      textInputType: TextInputType.text,
      validator: (value) {
        return passValidator(value);
      },
      onChanged: (String value) {},
    ),
    FieldModel(
      label: 'Confirmar Senha',
      passwordField: true,
      textInputType: TextInputType.text,
      controller: TextEditingController(),
      validator: (value) {
        return passValidator(value);
      },
      onChanged: (value) {},
    ),
  ],
);
