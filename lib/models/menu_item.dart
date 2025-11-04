class MenuItem {
  final String name;
  final double price;
  final String seller; // opcional (Starbucks, Oxxo, etc.)
  final String imagePath; // si lo usas en tus cards

  const MenuItem({
    required this.name,
    required this.price,
    this.seller = '',
    this.imagePath = '',
  });
}
