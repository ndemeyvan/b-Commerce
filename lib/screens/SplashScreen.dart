import 'dart:async';
import 'package:flutter/material.dart';
import 'ChooseSignInOrSignUp.dart';
import '../utils/Colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  ///Variable
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(ChooseSignInOrSignUp.id);
    });
  }
  ////////////Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/shop.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("B. Commerce",style: TextStyle(color: black,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: "PoiretOne"),),
              SizedBox(height: 45),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
