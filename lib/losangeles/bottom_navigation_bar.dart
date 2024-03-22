import 'package:flutter/material.dart';

import 'package:money_transfer/losangeles/welcome_page.dart';

import 'Login_screen.dart';

class BottomNavgationBar extends StatefulWidget {
  const BottomNavgationBar({Key? key}) : super(key: key);

  @override
  State<BottomNavgationBar> createState() => _BottomNavgationBarState();
}

class _BottomNavgationBarState extends State<BottomNavgationBar> {
  int select = 0;

  List<Widget> screens = [
    WelcomePage1(),
    LoginScreen(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(
            () {
              select = value;
            },
          );
        },
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        selectedFontSize: 14,
        unselectedItemColor: Colors.orange,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: select,
        backgroundColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "favorit",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: "comment",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: screens[select],
    );
  }
}
