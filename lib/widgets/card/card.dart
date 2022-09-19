import 'package:faz_a_boa/main.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text('foto'), Text('avaliação')],
                )),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Text('nome do posto'), Text('endereço')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [Text('10km')],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
