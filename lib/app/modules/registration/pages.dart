import 'package:flutter/material.dart';

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

final PageModel registrationPage = PageModel(
  key: GlobalKey<FormState>(),
  title: 'Realizar Cadastro',
  subTitle:
      'Preencha os campos para criar sua conta! \nSua senha deve conter no mínimo 8 caracteres, uma letra maiúscula e um caracter especial (!@#\$%&*)',
  emailSended: true,
  fields: [
    FieldModel(
      controller: TextEditingController(),
      label: 'Nome Completo',
      textInputType: TextInputType.text,
    ),
    FieldModel(
      label: 'Email',
      controller: TextEditingController(),
      textInputType: TextInputType.text,
    ),
    FieldModel(
      label: 'Senha',
      passwordField: true,
      textInputType: TextInputType.text,
      controller: TextEditingController(),
      validator: (value) {
        return passValidator(value);
      },
      onChanged: (value) {},
    ),
    FieldModel(
      label: 'CPF',
      controller: TextEditingController(),
      textInputType: TextInputType.number,
    )
  ],
);

passValidator(String? value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value!.isEmpty) {
    return 'Por favor, digite uma senha';
  }

  if (!regex.hasMatch(value)) {
    return 'Por favor, entre com uma senha válida';
  }

  return null;
}
