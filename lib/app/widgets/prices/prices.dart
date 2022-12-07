import 'package:faz_a_boa/app/models/station.model.dart';
import 'package:flutter/material.dart';

class StationsPrices extends StatelessWidget {
  final List<dynamic> fuels;

  const StationsPrices({
    super.key,
    required this.fuels,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Column(
        children: [
          const Text('Combustíveis'),
          cardPrice(),
        ],
      ),
    );
  }

  Widget cardPrice() {
    return Column(
      children: getPrices(),
    );
  }

  List<Widget> getPrices() {
    final List<Widget> prices = [];

    for (var stringFuel in fuels) {
      final fuel = stringToFuel(stringFuel);

      prices.add(
        Container(
          margin: const EdgeInsets.all(5),
          child: card(
            name: fuel.name,
            price: fuel.price,
          ),
        ),
      );
    }

    return prices;
  }

  stringToFuel(String stringFuel) {
    final name = stringFuel.split(' - ').first;
    final price = stringFuel.split(' - ').last.replaceFirst(',', '.');

    return Fuel(name: name, price: double.parse(price));
  }

  Widget card({required String name, required double price}) {
    String priceText = price.toString().replaceFirst('.', ',');

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.white70,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textCard(text: name),
            textCard(text: 'R\$$priceText'),
          ],
        ),
      ),
    );
  }

  Widget textCard({required String text}) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16),
    );
  }
}
