import 'package:flutter/material.dart';
import 'package:donut_app_8sc_25_3/models/menu_item.dart';
import 'package:donut_app_8sc_25_3/tab/burger_tab.dart';
import 'package:donut_app_8sc_25_3/tab/donut_tab.dart';
import 'package:donut_app_8sc_25_3/tab/pancake_tab.dart';
import 'package:donut_app_8sc_25_3/tab/pizza_tab.dart';
import 'package:donut_app_8sc_25_3/tab/smoothie_tab.dart';
import 'package:donut_app_8sc_25_3/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MenuItem> _cart = [];

  double get _total => _cart.fold(0.0, (sum, item) => sum + item.price);

  void _addToCart(MenuItem item) {
    setState(() => _cart.add(item));
  }

  void _removeFromCart(int index) {
    setState(() => _cart.removeAt(index));
  }

  List<Widget> get myTabs => const [
    MyTab(iconPath: 'lib/icons/donut.png', iconName: 'Donuts'),
    MyTab(iconPath: 'lib/icons/burger.png', iconName: 'Burgers'),
    MyTab(iconPath: 'lib/icons/smoothie.png', iconName: 'Smoothies'),
    MyTab(iconPath: 'lib/icons/pancakes.png', iconName: 'Pancakes'),
    MyTab(iconPath: 'lib/icons/pizza.png', iconName: 'Pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: const [
            Padding(padding: EdgeInsets.all(24.0), child: Icon(Icons.person)),
          ],
        ),
        body: Column(
          children: [
            // 1) Título
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text('I want to ', style: TextStyle(fontSize: 24)),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            // 2) Tabs
            TabBar(tabs: myTabs),

            // 3) Contenido de tabs (nota: cada tab recibe onAdd)
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(onAdd: _addToCart),
                  BurgerTab(onAdd: _addToCart),
                  SmoothieTab(onAdd: _addToCart),
                  PancakeTab(onAdd: _addToCart),
                  PizzaTab(onAdd: _addToCart),
                ],
              ),
            ),

            // 4) Barra de carrito
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Resumen
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${_cart.length} Item${_cart.length == 1 ? '' : 's'} | \$${_total.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Delivery Charges Included',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Botón ver carrito
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) =>
                              CartPage(items: _cart, onRemove: _removeFromCart),
                        ),
                      );
                      setState(() {}); // refrescar al volver
                    },
                    child: const Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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

class CartPage extends StatelessWidget {
  final List<MenuItem> items;
  final void Function(int index) onRemove;

  const CartPage({super.key, required this.items, required this.onRemove});

  double get total => items.fold(0.0, (s, i) => s + i.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart')),
      body: Column(
        children: [
          Expanded(
            child: items.isEmpty
                ? const Center(child: Text('Cart is empty'))
                : ListView.separated(
                    itemCount: items.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return ListTile(
                        leading: item.imagePath.isNotEmpty
                            ? Image.asset(item.imagePath, width: 40, height: 40)
                            : const Icon(Icons.fastfood),
                        title: Text(item.name),
                        subtitle: Text(item.seller.isEmpty ? '' : item.seller),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('\$${item.price.toStringAsFixed(2)}'),
                            IconButton(
                              icon: const Icon(Icons.delete_outline),
                              onPressed: () {
                                onRemove(index);
                                Navigator.pop(context);
                                // reabrir para refrescar sería opcional;
                                // mantener simple: volvemos y el HomePage hace setState.
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  '\$${total.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
