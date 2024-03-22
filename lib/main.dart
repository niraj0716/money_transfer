import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddnewcardsPage.dart';
import 'BalenceProfilePage.dart';
import 'BalenceProfilePage2.dart';
import 'ContactlistPage.dart';
import 'Electricity/ElectricPage.dart';
import 'Electricity/TabBarPage.dart';
import 'InternetDataPage.dart';
import 'LoginPage.dart';
import 'NevBarPage.dart';
import 'OtpPage.dart';
import 'PaymentDetailsPage.dart';
import 'ProfilePage.dart';
import 'RegistrationPage.dart';
import 'ResetPasswordPage.dart';
import 'ScancardPage.dart';
import 'SpleshScreen.dart';
import 'StatisticPage.dart';
import 'TopUpPage.dart';
import 'TransactionSuccesPage.dart';
import 'Wallet/WalletaccountPage.dart';
import 'Wallet/WalletcardsPage.dart';
import 'WelcomePage.dart';
import 'WithdarwPage.dart';
import 'losangeles/Login_screen.dart';
import 'losangeles/bottom_navigation_bar.dart';
import 'losangeles/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavgationBar(),
    );
  }
}
