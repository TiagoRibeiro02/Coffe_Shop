import 'coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {

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
  List<Coffee> get coffeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  //remove item from cart
  void removeItemCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }
}