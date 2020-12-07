
import 'package:chat_screen/screens/ChooseSignInOrSignUp.dart';
import 'package:chat_screen/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
class Router {
  static String initialRoute = '/';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute<Widget>(builder: (context) => SplashScreen());
        break;
      case ChooseSignInOrSignUp.id:
        return MaterialPageRoute<Widget>(
            builder: (context) => ChooseSignInOrSignUp());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}