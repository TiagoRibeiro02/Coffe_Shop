import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const Text(
                      'How wold you like your coffee?',
                      style: TextStyle(fontSize: 20),
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    //list of coffees
                    Expanded(
                        child: ListView.builder(
                          itemCount: value.coffeShop.length,
                            itemBuilder: (context, index) {
                          //get individual coffes
                          Coffee eachCoffee = value.coffeShop[index];

                          //display coffee tiles
                          return ListTile(
                            title: Text(eachCoffee.name),
                          );
                    }))
                  ],
                ),
              ),
            ),
    );
  }
}
