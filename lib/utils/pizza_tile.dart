import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final dynamic pizzaColor;
  final String pizzaImagePath;
  final String pizzaProvider;
  final void Function() onAdd; // 👈 nuevo callback para el carrito

  const PizzaTile({
    super.key,
    required this.pizzaFlavor,
    required this.pizzaPrice,
    required this.pizzaColor,
    required this.pizzaImagePath,
    required this.pizzaProvider,
    required this.onAdd, // 👈 agregado al constructor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50],
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
                    color: pizzaColor[100],
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
                    '\$$pizzaPrice',
                    style: TextStyle(
                      color: pizzaColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // Imagen de la pizza
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Image.asset(pizzaImagePath),
            ),

            // Nombre de la pizza
            Text(
              pizzaFlavor,
              style: TextStyle(
                color: pizzaColor[800],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Proveedor o restaurante
            Text(pizzaProvider, style: TextStyle(color: Colors.grey[600])),

            // Botones
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  TextButton(
                    onPressed: onAdd, // 👈 usa el callback
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
