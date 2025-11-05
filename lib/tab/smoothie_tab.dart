import 'package:flutter/material.dart';
import 'package:donut_app_8sc_25_3/models/menu_item.dart';
import 'package:donut_app_8sc_25_3/utils/smoothie_tile.dart';

// Lista de smoothies (nombre, precio, color, imagen, proveedor)
final List<List<dynamic>> smoothieOnSale = [
  [
    'Strawberry Smoothie',
    '110',
    Colors.orange,
    'lib/images/smoothie1.png',
    'Jamba Juice',
  ],
  [
    'Berry Blast',
    '130',
    Colors.purple,
    'lib/images/smoothie4.png',
    'Smoothie King',
  ],
  ['Green Detox', '140', Colors.green, 'lib/images/smoothie2.png', 'Subway'],
  ['Tropical Twist', '120', Colors.yellow, 'lib/images/smoothie3.png', 'Oasis'],
];

class SmoothieTab extends StatelessWidget {
  final void Function(MenuItem item) onAdd;

  const SmoothieTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: smoothieOnSale.length,
      itemBuilder: (context, index) {
        final s = smoothieOnSale[index];
        return SmoothieTile(
          smoothieFlavor: s[0],
          smoothiePrice: s[1],
          smoothieColor: s[2],
          smoothieImagePath: s[3],
          smoothieProvider: s[4],
          onAdd: () => onAdd(
            MenuItem(
              name: s[0],
              price: double.tryParse(s[1]) ?? 0.0,
              seller: s[4],
              imagePath: s[3],
            ),
          ),
        );
      },
    );
  }
}
