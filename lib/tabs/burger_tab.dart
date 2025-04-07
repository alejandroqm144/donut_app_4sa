

import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {

  //list of burgers
  final List burgersOnSale = [
    // [ burgerFlavor, burgerBrand, burgerPrice, burgerColor, imageName ]
    ["Hawaiburger", "Burger Frank's", "35", Colors.yellow, "lib/images/burger/patty.png"],
    ["Champiburger", "Burger Frank's", "39", Colors.red, "lib/images/burger/double-burger.png"],
    ["Tocinoburger", "Burger Frank's" ,"37", Colors.brown, "lib/images/burger/double.png"],
    ["Asadera", "Burger Frank's", "37", Colors.green, "lib/images/burger/burger.png"],
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
      itemCount: 4,
      padding: const EdgeInsets.all(12),
      // Qué elemento se construirá
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerBrand: burgersOnSale[index][1],
          burgerPrice: burgersOnSale[index][2],
          burgerColor: burgersOnSale[index][3],
          imageName: burgersOnSale[index][4],
        );
      });
  }
}