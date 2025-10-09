import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        actions: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: const Column(
        children: [
          //1. texto principal
          //2. pestañas (TabBar)
          //3. Contenido de pestañas (TabBarView)
          //4. Carrito (Cart)
        ],
      ),
    );
  }
}
