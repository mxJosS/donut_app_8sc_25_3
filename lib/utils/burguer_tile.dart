// BurguerTile.dart
import 'package:flutter/material.dart';

class BurguerTile extends StatelessWidget {
  final String burguerFlavor;
  final String burguerPrice;
  final dynamic burguerColor;
  final String burguerImagePath;
  final String burguerProvider;
  final void Function() onAdd; // 👈 Callback que se ejecuta al presionar "Add"

  const BurguerTile({
    super.key,
    required this.burguerFlavor,
    required this.burguerPrice,
    required this.burguerColor,
    required this.burguerImagePath,
    required this.burguerProvider,
    required this.onAdd, // 👈 agregado en el constructor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burguerColor[50],
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
                    color: burguerColor[100],
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
                    '\$$burguerPrice',
                    style: TextStyle(
                      color: burguerColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // Imagen de la hamburguesa
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
              child: Image.asset(burguerImagePath),
            ),

            // Nombre de la hamburguesa
            Text(
              burguerFlavor,
              style: TextStyle(
                color: burguerColor[800],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Tienda de la hamburguesa
            Text(burguerProvider, style: TextStyle(color: Colors.grey[600])),

            // Botones (favorito y agregar)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  TextButton(
                    onPressed: onAdd, // 👈 ejecuta la función recibida
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
