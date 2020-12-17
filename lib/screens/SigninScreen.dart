import 'package:chat_screen/Components/CustumButton.dart';
import 'package:chat_screen/screens/HomeScreen.dart';
import 'package:chat_screen/screens/SignUpScreen.dart';

import '../utils/Colors.dart';
import 'package:flutter/material.dart';
import '../utils/ScreenHeightAndWidth.dart';

class SignInScreen extends StatefulWidget {
  static const String id = "SignInScreen";

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  ///////////////Variable Section
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  final _formKey = GlobalKey<FormState>();

  ///////////////Methods

  ////////Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgLogin.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ("Welcome back."),
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        fontFamily: "Pacifico"),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: white),
                                  //  when the TextFormField in unfocused
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: white),
                                  //  when the TextFormField in focused
                                ),
                                icon: Icon(
                                  Icons.person,
                                  color: white,
                                ),
                                hintText: 'Enter your user name',
                                hintStyle: new TextStyle(color: white)
                                // labelText: 'User name',
                                ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your user name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenHeight(context) * 0.03,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: white),
                                  //  when the TextFormField in unfocused
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: white),
                                  //  when the TextFormField in focused
                                ),
                                icon: Icon(Icons.lock, color: white),
                                hintText: 'Enter your password',
                                hintStyle: new TextStyle(color: white)
                                // labelText: 'User name',
                                ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenHeight(context) * 0.1,
                          ),
                          CustomButton(
                              pressEvent: () {
                                if (_formKey.currentState.validate()) {
                                  // If the form is valid, display a Snackbar.
                                  Navigator.of(context)
                                      .pushNamed(HomeScreen.id);
                                }
                              },
                              buttonText: "Login",
                              buttonColor: white,
                              textColor: black),
                          SizedBox(
                            height: screenHeight(context) * 0.03,
                          ),
                          FlatButton(
                            onPressed: (){
                              Navigator.of(context)
                                  .pushReplacementNamed(SignUpScreen.id);
                            },
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 10),
                                children: <TextSpan>[
                                  TextSpan(text: 'You do not have an account? ', ),
                                  TextSpan(text: 'Create an account!',style: TextStyle(fontWeight: FontWeight.bold,color: orange)),
                                ],
                              ),
                            ),
                          )                      ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
