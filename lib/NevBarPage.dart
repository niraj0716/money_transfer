import 'package:flutter/material.dart';
import 'package:money_transfer/BalenceProfilePage2.dart';
import 'package:money_transfer/ProfilePage.dart';
import 'package:money_transfer/StatisticPage.dart';

import 'Wallet/WalletcardsPage.dart';

class NevBarPage extends StatefulWidget {
  const NevBarPage({Key? key}) : super(key: key);

  @override
  State<NevBarPage> createState() => _NevBarPageState();
}

class _NevBarPageState extends State<NevBarPage> {
  int select = 0;
  List unselectiteam = [
    "assets/images/NevBar/home.png",
    "assets/images/NevBar/Group 15.png",
    "assets/images/NevBar/Group 198.png",
    "assets/images/NevBar/Group 17.png"
  ];
  List selectiteam = [
    "assets/images/NevBar/Home (1).png",
    "assets/images/NevBar/statistic.png",
    "assets/images/NevBar/wallet.png",
    "assets/images/NevBar/profile.png"
  ];
  List screens = [
    BalenceProfilePage2(),
    StatisticPage(),
    WalletcardsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: select,
          elevation: 0,
          onTap: (value) {
            setState(() {
              select = value;
            });
          },
          selectedIconTheme: IconThemeData(color: Color(0xffFF897E)),
          selectedItemColor: Color(0xffFF897E),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: List.generate(
            4,
            (index) => BottomNavigationBarItem(
              icon: Image.asset(
                index == select
                    ? "${selectiteam[index]}"
                    : "${unselectiteam[index]}",
              ),
              label: "",
            ),
          )),
      body: screens[select],
    );
  }
}
