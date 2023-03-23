import 'package:flutter/material.dart';
import 'package:login_form/Screen/Create%20Account/View/CreateAccount.dart';
import 'package:login_form/Screen/Login/Provider/LoginScreenProvider.dart';
import 'package:login_form/Screen/Login/View/LoginScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginScreenProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => LoginScreen(),
          'signup':(context) => CreateAccount(),
        },
      ),
    ),
  );
}
