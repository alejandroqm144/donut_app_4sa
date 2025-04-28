

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/providers/cart_provider.dart';

class PancakeTile extends StatelessWidget {
  final String pancakeFlavor;
  final String pancakePrice;
  final String pancakeBrand;
  // dynamic porque será de tipo color
  final dynamic pancakeColor;
  final String pancakeImageName;

  const PancakeTile(
      {super.key,
      required this.pancakeFlavor,
      required this.pancakePrice,
      required this.pancakeColor,
      required this.pancakeBrand,
      required this.pancakeImageName});

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
            // Precio en la esquina superior derecha
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$pancakePrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pancakeColor[800],
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
                  pancakeImageName,
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
                    pancakeFlavor,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    pancakeBrand,
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
                          name: pancakeFlavor,
                          brand: pancakeBrand,
                          price: double.parse(pancakePrice),
                        ),
                      );
                    },
                    child: Text(
                      Provider.of<CartProvider>(context)
                              .isItemInCart(pancakeFlavor, pancakeBrand)
                          ? 'Remove (${Provider.of<CartProvider>(context).itemCount})'
                          : 'Add',
                      style: TextStyle(
                        color: Provider.of<CartProvider>(context)
                                .isItemInCart(pancakeFlavor, pancakeBrand)
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
