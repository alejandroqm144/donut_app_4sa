

import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {

  //list of burgers
  final List burgersOnSale = [
    // [ burgerFlavor, burgerBrand, burgerPrice, burgerColor, burgerImageName ]
    ["Hawaiburger", "Burger Frank's", "58", Colors.yellow, "lib/images/burger/burger-1.jpg"],
    ["Champiburger", "Burger Frank's", "49", Colors.red, "lib/images/burger/burger-2.jpg"],
    ["Tocinoburger", "Burger Frank's" ,"63", Colors.brown, "lib/images/burger/burger-3.jpg"],
    ["Asadera", "Burger Frank's", "52", Colors.green, "lib/images/burger/burger-4.jpg"],
    ["Polloburger", "Burger Frank's", "60", Colors.yellow, "lib/images/burger/burger-5.jpg"],
    ["Pavoburger", "Burger Frank's", "47", Colors.red, "lib/images/burger/burger-6.jpg"],
    ["Pastorburger", "Burger Frank's", "55", Colors.brown, "lib/images/burger/burger-7.jpg"],
    ["Pizzaburger", "Burger Frank's", "61", Colors.green, "lib/images/burger/burger-8.jpg"],
  ];
    
  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Prepa 1: cómmo se va a organizar
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // Número de columnas
        crossAxisCount: 2,
        // Proporción entre alto y ancho
        childAspectRatio: 1/1.6),
      // Cuántos elementos
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      // Qué elemento se construirá
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerBrand: burgersOnSale[index][1],
          burgerPrice: burgersOnSale[index][2],
          burgerColor: burgersOnSale[index][3],
          burgerImageName: burgersOnSale[index][4],
        );
      });
  }
}