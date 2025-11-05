// lib/tab/burger_tab.dart
import 'package:flutter/material.dart';
import 'package:donut_app_8sc_25_3/models/menu_item.dart';
import 'package:donut_app_8sc_25_3/utils/burguer_tile.dart';

// name, price (string), color, imagePath, provider
final List<List<dynamic>> burguerOnSale = [
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
    'Burger King',
  ],
  ['Bacon Burger', '200', Colors.red, 'lib/images/burguer4.png', "Wendy's"],
];

class BurgerTab extends StatelessWidget {
  final void Function(MenuItem item) onAdd; // callback del carrito

  const BurgerTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: burguerOnSale.length,
      itemBuilder: (context, index) {
        final data = burguerOnSale[index];
        final name = data[0] as String;
        final priceS = data[1] as String;
        final color = data[2];
        final img = data[3] as String;
        final prov = data[4] as String;

        return BurguerTile(
          burguerFlavor: name,
          burguerPrice: priceS,
          burguerColor: color,
          burguerImagePath: img,
          burguerProvider: prov,
          onAdd: () => onAdd(
            MenuItem(
              name: name,
              price: double.tryParse(priceS) ?? 0.0, // convierte a double
              seller: prov, // usa 'seller' del modelo
              imagePath: img,
            ),
          ),
        );
      },
    );
  }
}
