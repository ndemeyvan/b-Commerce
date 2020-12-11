import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/Colors.dart';

final List<String> imgList = [
  'https://i.pinimg.com/236x/26/31/2b/26312b8c46519fc4e66a9685792fdc91.jpg',
  'https://i.pinimg.com/236x/74/3a/d1/743ad1e4fd5f8bef56b937891d53dd45.jpg',
  'https://i.pinimg.com/236x/5b/9f/3c/5b9f3c93313fccfd985dc98fb18bb6a9.jpg',
  ];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class HomeScreen extends StatefulWidget {
  static const String id = "homeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /////////Variables

  /////////////////Methods

  ///////////Screens
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            "assets/icons/menu.png",
            height: 30,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: black,
            size: 32,
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              badgeContent: Text(
                '2',
                style: TextStyle(color: white),
              ),
              child: Icon(
                FontAwesomeIcons.shoppingBag,
                color: black,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: black,
              foregroundColor: black,
              backgroundImage: NetworkImage("https://i.pinimg.com/236x/92/90/0b/92900bbf3c745c032ba267ddb5dc00a9.jpg"),
            )),

          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              // enlargeCenterPage: true,
              viewportFraction: 0.9,

              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: imageSliders,
          ),
        ],
      ),
    );
  }
}
