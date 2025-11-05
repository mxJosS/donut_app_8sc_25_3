import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final dynamic smoothieColor;
  final String smoothieImagePath;
  final String smoothieProvider;
  final void Function() onAdd;

  const SmoothieTile({
    super.key,
    required this.smoothieFlavor,
    required this.smoothiePrice,
    required this.smoothieColor,
    required this.smoothieImagePath,
    required this.smoothieProvider,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
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
                    color: smoothieColor[100],
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
                    '\$$smoothiePrice',
                    style: TextStyle(
                      color: smoothieColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // Imagen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Image.asset(smoothieImagePath),
            ),

            // Nombre
            Text(
              smoothieFlavor,
              style: TextStyle(
                color: smoothieColor[800],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Tienda o proveedor
            Text(smoothieProvider, style: TextStyle(color: Colors.grey[600])),

            // Botones (favorito y agregar)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  TextButton(
                    onPressed: onAdd,
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
