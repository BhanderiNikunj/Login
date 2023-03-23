import 'package:flutter/material.dart';
import 'package:login_form/Screen/Login/Provider/LoginScreenProvider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginScreenProvider? loginScreenProvidertrue,loginScreenProviderfalse;
  @override
  Widget build(BuildContext context) {
    loginScreenProviderfalse = Provider.of<LoginScreenProvider>(context,listen: false);
    loginScreenProvidertrue = Provider.of<LoginScreenProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    right: -20,
                    top: -130,
                    child: Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -30,
                    top: -130,
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade700,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -70,
                    top: -90,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 180,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white70),
                      child: Image.asset(
                        "Assets/Images/images.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 90),
            Container(
              height: 70,
              width: 400,
              child: TextField(
                controller: loginScreenProviderfalse!.txtusername,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(),
                  label: Text(
                    "Enter E-mail",
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 400,
              child: TextField(
                controller: loginScreenProviderfalse!.txtpassword,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(),
                    label: Text(
                      "Enter Password",
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade900,
                    Colors.blue,
                  ],
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'signup');
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Alredy have account?",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Colors.blue.shade900,
                        )),
                  ]),
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
