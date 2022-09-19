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
                margin: const EdgeInsets.all(5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text('foto'), Text('avaliação')],
                )),
            Container(
              margin: const EdgeInsets.all(5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [Text('nome do posto'), Text('endereço')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [Text('10km')],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
