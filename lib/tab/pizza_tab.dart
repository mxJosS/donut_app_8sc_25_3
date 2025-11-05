import 'package:flutter/material.dart';
import 'package:donut_app_8sc_25_3/models/menu_item.dart';
import 'package:donut_app_8sc_25_3/utils/pizza_tile.dart';

final List<List<dynamic>> pizzaOnSale = [
  ['Margherita Pizza', '150', Colors.red, 'lib/images/pizza1.png', 'Pizza Hut'],
  [
    'Pepperoni Pizza',
    '180',
    Colors.orange,
    'lib/images/pizza2.png',
    "Domino's",
  ],
  ['Cheese Pizza', '200', Colors.brown, 'lib/images/pizza3.png', "Papa John's"],
  [
    'Veggie Delight',
    '130',
    Colors.green,
    'lib/images/pizza4.png',
    'Little Caesars',
  ],
];

class PizzaTab extends StatelessWidget {
  final void Function(MenuItem item) onAdd; // 👈 recibe el callback del carrito

  const PizzaTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: pizzaOnSale.length,
      itemBuilder: (context, index) {
        final p = pizzaOnSale[index];
        return PizzaTile(
          pizzaFlavor: p[0],
          pizzaPrice: p[1],
          pizzaColor: p[2],
          pizzaImagePath: p[3],
          pizzaProvider: p[4],
          onAdd: () => onAdd(
            // 👈 aquí se manda el producto al carrito
            MenuItem(
              name: p[0],
              price: double.tryParse(p[1]) ?? 0.0,
              seller: p[4],
              imagePath: p[3],
            ),
          ),
        );
      },
    );
  }
}
