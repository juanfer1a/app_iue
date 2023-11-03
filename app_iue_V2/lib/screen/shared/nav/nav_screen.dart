import 'package:flutter/material.dart';

import '../../home/home_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentIndex = 0;

  List<Widget> screens = const [
    HomeScreen(),
    // WorkScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: const Color.fromARGB(255, 13, 13, 14),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: NavBarScreen(),
            ), // Cambia el color según tus preferencias
          ),
        )),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: screens[currentIndex],
        )),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (int newIndex) {
              setState(() {
                currentIndex = newIndex;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(label: "Inicio", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Inicio", icon: Icon(Icons.home)),
            ],
            selectedItemColor: Colors.blue),
      ),
    );
  }
}
