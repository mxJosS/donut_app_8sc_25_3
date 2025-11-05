import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeFlavor;
  final String pancakePrice;
  final dynamic pancakeColor;
  final String pancakeImagePath;
  final String pancakeProvider;
  final void Function() onAdd; // 👈 nuevo callback

  const PancakeTile({
    super.key,
    required this.pancakeFlavor,
    required this.pancakePrice,
    required this.pancakeColor,
    required this.pancakeImagePath,
    required this.pancakeProvider,
    required this.onAdd, // 👈 agregado al constructor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            // Precio arriba a la derecha
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pancakeColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ),
                  child: Text(
                    '\$$pancakePrice',
                    style: TextStyle(
                      color: pancakeColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // Imagen del pancake
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Image.asset(pancakeImagePath),
            ),

            // Nombre del pancake
            Text(
              pancakeFlavor,
              style: TextStyle(
                color: pancakeColor[800],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Tienda o proveedor
            Text(pancakeProvider, style: TextStyle(color: Colors.grey[600])),

            // Botones (favorito y agregar)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  TextButton(
                    onPressed: onAdd, // 👈 ejecuta el callback
                    child: const Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
