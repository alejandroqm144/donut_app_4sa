

import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {

  final String donutFlavor;
  final String donutPrice;
  // dynamic porque será de tipo color
  final dynamic donutColor;
  final String imageName;

  const DonutTile({super.key,
  required this.donutFlavor,
  required this.donutPrice,
  required this.donutColor,
  required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // color: donutColor[50]
        decoration: BoxDecoration(
          color: donutColor[50],
          // Esquinas redondeadas
          borderRadius: BorderRadius.circular(24)),
          child: Column(children: [
            Row( mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8,
                  horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: donutColor[800]
                    ),
                  ),
                )
              ],
            )
          ],),
      ),
    );
  }
}