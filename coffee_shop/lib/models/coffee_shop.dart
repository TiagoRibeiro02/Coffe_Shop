import 'coffee.dart';
import 'package:flutter/material.dart';

class CoffeShop {

  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(name: 'Long Black', price: '4.10', imagePath: 'assets/black.png'),
    //latte
    Coffee(name: 'Latte', price: '4.10', imagePath: 'assets/latte.png'),
    //cappuccino
    Coffee(name: 'Cappuccino', price: '4.10', imagePath: 'assets/cappucino.png'),
    //espresso
    Coffee(name: 'Espresso', price: '4.10', imagePath: 'assets/coffee-cup.png'),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list

  //get user cart

  //add item to cart

  //remove item from cart
}