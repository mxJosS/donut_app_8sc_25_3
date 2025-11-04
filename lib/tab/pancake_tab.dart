import 'package:flutter/material.dart';
import 'package:donut_app_8sc_25_3/utils/pancake_tile.dart';

List pancakeOnSale = [
  //PancakeFlavor, pancakePrice, PancakeColor, PancakeImagePath, PancakeProvider
  ['Classic Pancake', '150', Colors.yellow, 'lib/images/pancake2.png', 'IHOP'],
  [
    'Blueberry Pancake',
    '180',
    Colors.blue,
    'lib/images/pancake1.png',
    'Denny\'s',
  ],
  [
    'Chocolate Chip Pancake',
    '200',
    Colors.brown,
    'lib/images/pancake3.png',
    'Waffle House',
  ],
  [
    'Vanilla Pancake',
    '170',
    Colors.orange,
    'lib/images/pancake2.png',
    'Cracker Barrel',
  ],
];

class PancakeTab extends StatelessWidget {
  const PancakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: pancakeOnSale.length,
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakePrice: pancakeOnSale[index][1],
          pancakeColor: pancakeOnSale[index][2],
          pancakeImagePath: pancakeOnSale[index][3],
          pancakeProvider: pancakeOnSale[index][4],
        );
      },
    );
  }
}
