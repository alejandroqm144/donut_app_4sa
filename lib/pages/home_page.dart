

import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(
      iconPath: 'lib/icons/donut.png',
      tabName: 'Donuts',
    ),
    const MyTab(
      iconPath: 'lib/icons/burger.png',
      tabName: 'Burgers',
    ),
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
      tabName: 'Smoothies',
    ),
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
      tabName: 'Pancakes',
    ),
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
      tabName: 'Pizzas',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            //icono de la izquierda
            leading: Icon(Icons.menu, color: Colors.grey[800]),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
              )
            ],
          ),
          body: Column(
            children: [
              //1. Texto principal (Text)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Text(
                      'I want to ',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      'Eat',
                      style: TextStyle(
                        //Tamaño de letra
                        fontSize: 32,
                        // Negritas
                        fontWeight: FontWeight.bold,
                        //Subrayado
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),

              //2. Pestañas (TabBar)
              TabBar(tabs: myTabs),

              //3. Contenido de pestañas (TapBarView)
              Expanded(
                child: TabBarView(children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakesTab(),
                  PizzaTab()
                ]),
              ),

              //4. Carrito (Cart)
              const ShoppingCart()
            ],
          )),
    );
  }
}
