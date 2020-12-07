import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class ChooseSignInOrSignUp extends StatefulWidget {
  static const String id = "ChooseSignInOrSignUpScreen";
  ChooseSignInOrSignUp({Key key}) : super(key: key);

  @override
  _ChooseSignInOrSignUpState createState() => _ChooseSignInOrSignUpState();
}

class _ChooseSignInOrSignUpState extends State<ChooseSignInOrSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/choosebackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //loverlay
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 2.6),
              Center(
                child: Text(
                  "B-COMMERCE",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white60,
                    letterSpacing: 2,

                  ),
                ),
              ),
              SizedBox(height: 70.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "All Your Favorite Brands \nAt One Place",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "All Your Favorite Brands At One Place\nBest Online Shop 2020",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.white60,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    onPressed: () {},
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14.0,
                      ),
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    onPressed: () {},
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14.0,
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
            ],
          )
        ],
      ),
    );
  }
}
