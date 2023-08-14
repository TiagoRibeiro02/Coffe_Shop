import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {

  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTile({
    super.key,
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //coffee image
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeeImagePath),
            ),

            //coffee name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      coffeeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                      'With Almond Milk',
                    style: TextStyle(color: Colors.grey[700]),
                  ),

                  //Price
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$$coffeePrice'),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                            child: Icon(Icons.add)
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
