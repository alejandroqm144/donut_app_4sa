

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/providers/cart_provider.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaBrand;
  final String pizzaPrice;
  // dynamic porque será de tipo color
  final dynamic pizzaColor;
  final String pizzaImageName;

  const PizzaTile(
      {super.key,
      required this.pizzaFlavor,
      required this.pizzaPrice,
      required this.pizzaColor,
      required this.pizzaBrand,
      required this.pizzaImageName});

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
            // Precio en la esquina superior derecha
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$pizzaPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pizzaColor[800],
                    ),
                  ),
                ),
              ],
            ),

            // Imagen centrada con espacio proporcional
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Image.asset(
                  pizzaImageName,
                  fit: BoxFit.contain, // Ajusta la imagen sin deformar
                ),
              ),
            ),

            // Nombre y marca debajo de la imagen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Text(
                    pizzaFlavor,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    pizzaBrand,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            // Botones ("Add" y corazón) en la parte inferior
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Botón de favoritos (corazón)
                  IconButton(
                    onPressed: () {
                      print('Producto agregado a Favoritos');
                    },
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.pink[800],
                    ),
                  ),

                  // Botón "Add"
                  TextButton(
                    onPressed: () {
                      final cartProvider =
                          Provider.of<CartProvider>(context, listen: false);
                      cartProvider.toggleItem(
                        CartItem(
                          name: pizzaFlavor,
                          brand: pizzaBrand,
                          price: double.parse(pizzaPrice),
                        ),
                      );
                    },
                    child: Text(
                      Provider.of<CartProvider>(context)
                              .isItemInCart(pizzaFlavor, pizzaBrand)
                          ? 'Remove (${Provider.of<CartProvider>(context).itemCount})'
                          : 'Add',
                      style: TextStyle(
                        color: Provider.of<CartProvider>(context)
                                .isItemInCart(pizzaFlavor, pizzaBrand)
                            ? Colors.red
                            : Colors.black,
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
