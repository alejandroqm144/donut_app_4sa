

import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String tabName;

  const MyTab({
    super.key,
    required this.iconPath,
    required this.tabName,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Ícono
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              iconPath,
              width: 24,
              height: 24,
            ),
          ),
          // Nombre de la pestaña
          const SizedBox(height: 4),
          Text(
            tabName,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500, // Un poco más grueso
              color: Colors.grey[800], // Color más oscuro
            ),
          ),
        ],
      ),
    );
  }
}
