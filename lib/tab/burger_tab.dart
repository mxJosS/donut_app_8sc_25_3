import 'package:donut_app_8sc_25_3/utils/donut_tile.dart';
import 'package:flutter/material.dart';

final List burguerOnSale = [
  //BurgerFlavor, burgerPrice, BurgerColor, BurgerImagePath, BurgerProvider
  [
    'Classic Burger',
    '150',
    Colors.brown,
    'lib/images/burguer1.png',
    'McDonalds',
  ],
  [
    'Cheese Burger',
    '180',
    Colors.yellow,
    'lib/images/burguer2.png',
    'Burger King',
  ],
  [
    'Veggie Burger',
    '130',
    Colors.green,
    'lib/images/burguer3.png',
    'Burguer King',
  ],
  ['Bacon Burger', '200', Colors.red, 'lib/images/burguer4.png', 'Wendy\'s'],
];

class BurgerTab extends StatelessWidget {
  const BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: burguerOnSale.length,
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: burguerOnSale[index][0],
          donutPrice: burguerOnSale[index][1],
          donutColor: burguerOnSale[index][2],
          donutImagePath: burguerOnSale[index][3],
          donutProvider: burguerOnSale[index][4],
        );
      },
    );
  }
}
