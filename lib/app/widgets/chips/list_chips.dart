import 'package:flutter/material.dart';

import 'package:faz_a_boa/app/widgets/chips/chip.dart';
import 'package:faz_a_boa/app/widgets/chips/model/chips.model.dart';

class ChipsListWidget extends StatelessWidget {
  final List<ChipModel> chipsList;

  const ChipsListWidget({Key? key, required this.chipsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(flex: 1, child: chipList(chipsList));
  }

  Widget chipList(List<ChipModel> chips) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 20, maxHeight: 300),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: const EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
              child: FZBChip(label: chips[index].label));
        },
      ),
    );
  }
}
