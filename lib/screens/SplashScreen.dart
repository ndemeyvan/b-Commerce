import 'dart:async';
import 'package:flutter/cupertino.dart';
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
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(ChooseSignInOrSignUp.id);
    });
  }

  ////////////Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [   Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/shop.jpeg'),
              fit: BoxFit.cover,
            ),
          ),

        ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment(
                    Alignment.bottomCenter.x,
                    1 - Alignment.bottomCenter.y,
                  ),
                  colors: [Colors.black, Colors.black.withOpacity(0.2)],
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "B-commerce",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white60,
                    letterSpacing: 2,
                      fontFamily: "Pacifico"
                  ),
                ),
                SizedBox(height: 25,)
              ],
            ),
          ),

        ],
      ),
    );
  }
}
