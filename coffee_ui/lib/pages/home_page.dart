import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Find best coffee for you',
                style: GoogleFonts.bebasNeue(fontSize: 56),
              ),
            ),

            //Search bar
            TextField()

            //horizontal listview of coffee tiles
          ],
        )
    );
  }
}
