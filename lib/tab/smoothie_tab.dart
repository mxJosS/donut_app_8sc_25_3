import 'package:donut_app_8sc_25_3/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

//List of Smoothies
final List smoothieOnSale = [
  //SmoothieFlavor, smoothiePrice, SmoothieColor, SmoothieImagePath, SmoothieProvider
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
  const SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6,
      ),
      itemCount: smoothieOnSale.length,
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothiePrice: smoothieOnSale[index][1],
          smoothieColor: smoothieOnSale[index][2],
          smoothieImagePath: smoothieOnSale[index][3],
          smoothieProvider: smoothieOnSale[index][4],
        );
      },
    );
  }
}
