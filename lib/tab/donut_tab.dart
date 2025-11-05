import 'package:donut_app_8sc_25_3/utils/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_8sc_25_3/models/menu_item.dart';

//List of donuts
final List donutOnSale = [
  //DonutFlavor, donutPrice, DonutColor, DonutImagePath, DonutProvider
  [
    'Chocolate Frosted',
    '100',
    Colors.brown,
    'lib/images/chocolate_donut.png',
    'Starbucks',
  ],
  [
    'Strawberry Frosted',
    '120',
    Colors.pink,
    'lib/images/strawberry_donut.png',
    'Oxxo',
  ],
  [
    'Vanilla Frosted',
    '80',
    Colors.purple,
    'lib/images/grape_donut.png',
    'Starbucks',
  ],
  [
    'Glazed',
    '90',
    Colors.orange,
    'lib/images/icecream_donut.png',
    'Dunkin Donuts',
  ],
];

class DonutTab extends StatelessWidget {
  final void Function(MenuItem item) onAdd;

  const DonutTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: donutOnSale.length,
      itemBuilder: (context, index) {
        final data = donutOnSale[index];
        final name = data[0] as String;
        final priceS = data[1] as String;
        final color = data[2];
        final img = data[3] as String;
        final prov = data[4] as String;

        return DonutTile(
          donutFlavor: name,
          donutPrice: priceS,
          donutColor: color,
          donutImagePath: img,
          donutProvider: prov,
          onAdd: () => onAdd(
            MenuItem(
              name: name,
              price: double.tryParse(priceS) ?? 0.0,
              seller: prov,
              imagePath: img,
            ),
          ),
        );
      },
    );
  }
}
