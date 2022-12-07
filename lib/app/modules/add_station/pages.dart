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
    ),
  ],
);
