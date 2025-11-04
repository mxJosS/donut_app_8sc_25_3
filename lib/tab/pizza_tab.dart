import 'package:donut_app_8sc_25_3/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

final List pizzaOnSale = [
  //PizzaFlavor, pizzaPrice, PizzaColor, PizzaImagePath, PizzaProvider
  ['Margherita Pizza', '150', Colors.red, 'lib/images/pizza1.png', 'Pizza Hut'],
  [
    'Pepperoni Pizza',
    '180',
    Colors.orange,
    'lib/images/pizza2.png',
    'Domino\'s',
  ],
  [
    'Cheese Pizza',
    '200',
    Colors.brown,
    'lib/images/pizza3.png',
    'Papa John\'s',
  ],
  [
    'Veggie Delight',
    '130',
    Colors.green,
    'lib/images/pizza4.png',
    'Little Caesars',
  ],
];

class PizzaTab extends StatelessWidget {
  const PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: pizzaOnSale.length,
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          pizzaImagePath: pizzaOnSale[index][3],
          pizzaProvider: pizzaOnSale[index][4],
        );
      },
    );
  }
}
