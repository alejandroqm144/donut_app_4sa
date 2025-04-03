
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('2 Items | \$45 ',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 18),
              ),
              Text('Delivery Charges Included')
            ],
          ),
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12)
            ),
          child: const Text('View Cart',
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold)))
        ],
      )
    );
  }
}