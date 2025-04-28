

import 'package:donut_app_4sa/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {

  //list of pancakes
  final List pancakesOnSale = [
    // [ pancakeFlavor, pancakeBrand, pancakePrice, pancakeColor, pancakeImageName ]
    ["Apple", "Nico's Brunch", "36", Colors.blue, "lib/images/pancake/pancake-1.jpg"],
    ["Normal", "Señor Mollete", "44", Colors.red, "lib/images/pancake/pancake-2.jpg"],
    ["Oatmeal", "Marmalade Centro" ,"52", Colors.purple, "lib/images/pancake/pancake-3.jpg"],
    ["Lemon", "Crepa IN", "33", Colors.brown, "lib/images/pancake/pancake-4.jpg"],
    ["Choco", "Vous Amour's", "48", Colors.green, "lib/images/pancake/pancake-5.jpg"],
    ["Pumpkin", "Bonjus", "39", Colors.yellow, "lib/images/pancake/pancake-6.jpg"],
    ["Choco", "Vous Amour's", "55", Colors.blue, "lib/images/pancake/pancake-7.jpg"],
    ["Pumpkin", "Bonjus", "42", Colors.red, "lib/images/pancake/pancake-8.jpg"],
  ];
    
  PancakesTab({super.key});

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
        return PancakeTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakeBrand: pancakesOnSale[index][1],
          pancakePrice: pancakesOnSale[index][2],
          pancakeColor: pancakesOnSale[index][3],
          pancakeImageName: pancakesOnSale[index][4],
        );
      });
  }
}