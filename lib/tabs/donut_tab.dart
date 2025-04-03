

import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutBrand, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Kryspy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Littlebaby Donut's", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Black Donut's" ,"84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Dunkin Donut's", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
    
  DonutTab({super.key});

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
      itemCount: 4,
      padding: const EdgeInsets.all(12),
      // Qué elemento se construirá
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutBrand: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      });
  }
}