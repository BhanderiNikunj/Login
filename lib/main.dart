import 'package:flutter/material.dart';
import 'package:login_form/Screen/Create%20Account/View/CreateAccount.dart';
import 'package:login_form/Screen/FlashScreen/View/FlashScreen.dart';
import 'package:login_form/Screen/Login/View/LoginScreen.dart';
import 'package:login_form/Screen/WelCome/view/WelComeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => FlashScreen(),
        'signin': (context) => LoginScreen(),
        'signup': (context) => CreateAccount(),
        'welcome': (context) => WelComeScreen(),
      },
    ),
  );
}
