

import 'package:flutter/material.dart';

// Modelo para los items del carrito
class CartItem {
  final String name;
  final String brand;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.brand,
    required this.price,
    this.quantity = 1,
  });
}

// Clase que gestiona el estado del carrito
class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  // Getter para los items
  List<CartItem> get items => _items;

  // Getter para el número total de items
  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);

  // Getter para el precio total
  double get totalPrice => _items.fold(0, (sum, item) => sum + (item.price * item.quantity));

  // Añadir o quitar un item (toggle)
  void toggleItem(CartItem newItem) {
    final existingIndex = _items.indexWhere(
      (item) => item.name == newItem.name && item.brand == newItem.brand,
    );

    if (existingIndex >= 0) {
      _items.removeAt(existingIndex); // Si existe, lo quita
    } else {
      _items.add(newItem); // Si no existe, lo añade
    }
    notifyListeners(); // Actualiza todos los widgets que escuchan este provider
  }

  // Verifica si un item está en el carrito
  bool isItemInCart(String name, String brand) {
    return _items.any((item) => item.name == name && item.brand == brand);
  }
}