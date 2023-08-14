import 'package:coffee_ui/util/coffee_tile.dart';
import 'package:coffee_ui/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of coffee types
  final List coffeeType = [
    [
      'Cappucino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
  ];

  //user selected the type of coffee
  void onTypeSelected(int index) {
    setState(() {
      for(int i = 0; i < coffeeType.length; i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.account_circle),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            )
          ],
        ),
        body: Column(
          children: [
            //Find best coffee for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Find the best coffee for you',
                style: GoogleFonts.bebasNeue(fontSize: 56),
              ),
            ),

            SizedBox(height: 25.0),

            //Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your coffee...',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                ),
              ),
            ),

            SizedBox(height: 25.0),

            //horizontal listview of coffee types
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeType(
                      coffeeType: coffeeType[index][0],
                      isSelected: coffeeType[index][1],
                      onTap: () {
                        onTypeSelected(index);
                      }
                  );
                },
              ),
            ),

            //horizontal listview of coffee tiles
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeImagePath: 'assets/capuchino.jpg',
                  coffeeName: 'Cappucino',
                  coffeePrice: '5.00',
                ),
                CoffeeTile(
                  coffeeImagePath: 'assets/late.jpg',
                  coffeeName: 'Latte',
                  coffeePrice: '4.00',
                ),
                CoffeeTile(
                  coffeeImagePath: 'assets/coffee.jpg',
                  coffeeName: 'Black',
                  coffeePrice: '4.20',
                ),
              ],
            ))
          ],
        ));
  }
}
