import 'package:flutter/material.dart';
import 'package:donut_app_8sc_25_3/models/menu_item.dart';
import 'package:donut_app_8sc_25_3/utils/pancake_tile.dart';

final List<List<dynamic>> pancakeOnSale = [
  ['Classic Pancake', '150', Colors.yellow, 'lib/images/pancake2.png', 'IHOP'],
  [
    'Blueberry Pancake',
    '180',
    Colors.blue,
    'lib/images/pancake1.png',
    "Denny's",
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
  final void Function(MenuItem item) onAdd; // 👈 callback del carrito

  const PancakeTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: pancakeOnSale.length,
      itemBuilder: (context, index) {
        final p = pancakeOnSale[index];
        return PancakeTile(
          pancakeFlavor: p[0],
          pancakePrice: p[1],
          pancakeColor: p[2],
          pancakeImagePath: p[3],
          pancakeProvider: p[4],
          onAdd: () => onAdd(
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
