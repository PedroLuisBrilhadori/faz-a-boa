import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/text-field/models/text_field.model.dart';

class PageModel {
  final String title;
  final String subTitle;
  final List<FieldModel> fields;
  final GlobalKey<FormState> key;

  PageModel({
    required this.title,
    required this.subTitle,
    required this.fields,
    required this.key,
  });
}

final PageModel addStationPage = PageModel(
  key: GlobalKey<FormState>(),
  title: 'Adicionar um posto',
  subTitle:
      "O formato para adicionar um combústivel é: 'gasolina - 5.33 ; etanol - 4.22' \nO hífen separa o nome do preço. O ponto e vírgula separa combútiveis.",
  fields: [
    FieldModel(
      controller: TextEditingController(),
      label: 'Nome',
      textInputType: TextInputType.name,
    ),
    FieldModel(
      label: 'Endereço',
      controller: TextEditingController(),
      textInputType: TextInputType.streetAddress,
    ),
    FieldModel(
      label: 'Url Foto de perfil',
      controller: TextEditingController(),
      textInputType: TextInputType.text,
    ),
    FieldModel(
      label: 'Url Foto de capa',
      controller: TextEditingController(),
      textInputType: TextInputType.text,
    ),
    FieldModel(
      label: 'Combustíveis',
      controller: TextEditingController(),
      textInputType: TextInputType.text,
      validator: (value) => fuelsValidator(value),
    ),
  ],
);

fuelsValidator(String? value) {
  RegExp regExp =
      RegExp(r'^[a-zA-Z ]+ - [0-9-.|,]+(?:\ ; [a-zA-Z ]+ - [0-9-.|,]+)*$');

  if (value!.isEmpty) {
    return 'Por favor, digite os combustíveis';
  }

  if (!regExp.hasMatch(value)) {
    return 'Por favor, siga o padrão "combustível - 4.00 ; combustível dois - 3.00"';
  }
}
