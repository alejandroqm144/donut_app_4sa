

import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //list of donuts
  final List donutsOnSale = [ 
    // [ donutFlavor, donutBrand, donutPrice, donutColor, donutImageName ]
    ["Glazed", "Kryspy Kreme", "36", Colors.blue, "lib/images/donuts/Glazed-donuts.png"],
    ["Chocolate Frosted", "Littlebaby Donut's", "45", Colors.red, "lib/images/donuts/chocolate-donuts.png"],
    ["Sugar", "Black Donut's" ,"84", Colors.purple, "lib/images/donuts/sugar-donuts.png"],
    ["Jelly-filled", "Dunkin Donut's", "95", Colors.brown, "lib/images/donuts/Jelly-filled-donuts.jpg"],
    ["Nutella-filled", "Dunkin Donut's", "36", Colors.red, "lib/images/donuts/Custard-cream-donuts.jpg"],
    ["Cinnamon Sugar", "Dunkin Donut's", "45", Colors.green, "lib/images/donuts/Cinnamon-sugar-donuts.png"],
    ["Sprinkled", "Dunkin Donut's", "84", Colors.green, "lib/images/donuts/Sprinkled-donuts.png"],
    ["Honey-glazed", "Dunkin Donut's", "95", Colors.green, "lib/images/donuts/Honey-glazed-donuts.jpg"]
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
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      // Qué elemento se construirá
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutBrand: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          donutImageName: donutsOnSale[index][4],
        );
      });
  }
}