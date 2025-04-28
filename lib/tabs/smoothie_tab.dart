

import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {

  //list of donuts
  final List smoothiesOnSale = [
    // [ donutFlavor, donutBrand, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Danny Master", "75", Colors.blueGrey, "lib/images/smoothie/smoothie-1.jpg"],
    ["Strawberry", "The Kingdom Shake", "75", Colors.pinkAccent, "lib/images/smoothie/smoothie-2.jpeg"],
    ["Grape Ape", "Helados Colon" ,"84", Colors.blue, "lib/images/smoothie/smoothie-3.jpg"],
    ["Oreo", "Starbucks", "95", Colors.brown, "lib/images/smoothie/smoothie-4.jpeg"],
    ["Mango con chamoy", "Dalia Café Bouquet", "76", Colors.orange, "lib/images/smoothie/smoothie-5.jpeg"],
    ["forest blackberries", "Café Son", "75", Colors.purple, "lib/images/smoothie/smoothie-6.jpeg"],
    ["Strawberry-banana", "Kadus Café" ,"84", Colors.yellow, "lib/images/smoothie/smoothie-7.jpg"],
    ["Cucumber-lemon", "Pola Gelato Shop", "95", Colors.green, "lib/images/smoothie/smoothie-8.jpeg"],
  ];
    
  SmoothieTab({super.key});

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
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothieBrand: smoothiesOnSale[index][1],
          smoothiePrice: smoothiesOnSale[index][2],
          smoothieColor: smoothiesOnSale[index][3],
          smoothieImageName: smoothiesOnSale[index][4],
        );
      });
  }
}