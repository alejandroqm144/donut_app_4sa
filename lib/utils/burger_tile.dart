

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final String burgerBrand;
  // dynamic porque será de tipo color
  final dynamic burgerColor;
  final String imageName;

  const BurgerTile(
      {super.key,
      required this.burgerFlavor,
      required this.burgerPrice,
      required this.burgerColor,
      required this.burgerBrand,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // color: donutColor[50]
        decoration: BoxDecoration(
            color: burgerColor[50],
            // Esquinas redondeadas
            borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColor[100],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: burgerColor[800]),
                  ),
                ),
              ],
            ),

            //Donut price
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ).copyWith(
                bottom: 12,
                top: 8,
              ),
              child: Image.asset(imageName),
            ),

            //Donut flavor text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                burgerFlavor,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),

            // Nombre de la marca (Brand Text)
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text(
                burgerBrand,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),

            //Icons
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Botón del corazón
                  IconButton(
                      onPressed: () {
                        print('Producto agregado a Favoritos');
                      },
                      icon:
                          Icon(Icons.favorite_border, color: Colors.pink[800])),

                  // Botón 'Add'
                  TextButton(
                    onPressed: () {
                      print('Producto agregado al carrito');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        color: Colors.black, // Color del texto (ajústalo)
                      ),
                    ),
                  ),

                  //
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
