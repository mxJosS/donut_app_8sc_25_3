import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String iconName;
  const MyTab({super.key, required this.iconPath, required this.iconName});

  @override
  Widget build(BuildContext context) {
    // 3. ENVUELVE TODO EN UN WIDGET 'Column'
    return Tab(
      height: 80, // Le damos un poco más de altura
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos
        children: [
          // Icono
          Image.asset(
            iconPath,
            height: 32, // Un tamaño fijo para el ícono
          ),

          const SizedBox(height: 8), // Un espacio entre el ícono y el texto
          // Texto
          Text(
            iconName, // Usa la variable que creamos
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
