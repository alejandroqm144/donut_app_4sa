

import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {

  //list of pizzas
  final List pizzasOnSale = [
    // [ pizzaFlavor, pizzaBrand, pizzaPrice, pizzaColor, pizzaImageName ]
    ["Double cheese", "Bricanto Pizza's", "54", Colors.blue, "lib/images/pizza/pizza-1.jpg"],
    ["Pepperoni", "Little Caesar's", "35", Colors.red, "lib/images/pizza/pizza-2.jpeg"],
    ["Mushroom", "Davis Pizza" ,"43", Colors.purple, "lib/images/pizza/pizza-3.jpg"],
    ["Mozzarella", "Domino's Pizza", "34", Colors.brown, "lib/images/pizza/pizza-4.jpg"],
    ["Vegetarian", "Pizza Hut", "51", Colors.brown, "lib/images/pizza/pizza-5.jpg"],
    ["Hawaiian", "Pizza Messina's", "40", Colors.brown, "lib/images/pizza/pizza-6.jpg"],
    ["Al Pastor", "Boston's", "32", Colors.brown, "lib/images/pizza/pizza-7.jpeg"],
    ["Hawaiana-Pepperoni", "Pizzeria pizzadrino's", "45", Colors.brown, "lib/images/pizza/pizza-8.jpg"],
  ];
    
  PizzaTab({super.key});

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
        return PizzaTile(
          pizzaFlavor: pizzasOnSale[index][0],
          pizzaBrand: pizzasOnSale[index][1],
          pizzaPrice: pizzasOnSale[index][2],
          pizzaColor: pizzasOnSale[index][3],
          pizzaImageName: pizzasOnSale[index][4],
        );
      });
  }
}