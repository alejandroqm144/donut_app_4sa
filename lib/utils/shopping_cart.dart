

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/providers/cart_provider.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${cartProvider.itemCount} Items | \$${cartProvider.totalPrice.toStringAsFixed(2)}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('View Cart'),
          ),
        ],
      ),
    );
  }
}
