import 'package:flutter/material.dart';

import 'package:faz_a_boa/widgets/chips/chip.dart';
import 'package:faz_a_boa/widgets/chips/model/chips.model.dart';

final List<ChipModel> chips = [
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
  ChipModel(label: 'teste'),
];

class ChipsListWidget extends StatelessWidget {
  const ChipsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: chipList(chips));
  }

  Widget chipList(List<ChipModel> chips) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
              child: FZBChip(label: chips[index].label));
        });
  }
}
