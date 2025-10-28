import 'package:donut_app_8sc_25_3/utils/donut_tile.dart';
import 'package:flutter/material.dart';

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
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: donutOnSale.length,
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
        );
      },
    );
  }
}
