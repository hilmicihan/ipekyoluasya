import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ipekyoluasya/screens/listScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  bool exploreButton = false;
  bool favoriteButton = false;
  bool flightButton = false;
  bool paymentButton = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6FA12E),
        ),
        backgroundColor: Colors.white,
        body: Screens[index],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black),
            width: 100,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: index == 0
                      ? Color(0xFFFFCD00)
                      : Colors.grey, // when pressed it will return yellow
                  onPressed: () {
                    setState(() {
                      favoriteButton = !favoriteButton;
                      index = 0;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.explore),
                  color: index == 1
                      ? Color(0xFFFFCD00)
                      : Colors.grey, // when pressed it will return yellow
                  onPressed: () {
                    setState(
                      () {
                        exploreButton = !exploreButton;
                        index = 1;
                      },
                    );
                  },
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.rocket,
                    color: index == 2
                        ? Color(0xFFFFCD00)
                        : Colors.grey, // when pressed it will return yellow
                  ),
                  onPressed: () {
                    setState(() {
                      flightButton = !flightButton;
                      index = 2;
                    });
                  },
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.donate,
                    color: index == 3
                        ? Color(0xFFFFCD00)
                        : Colors.grey, // when pressed it will return yellow
                  ),
                  onPressed: () {
                    setState(() {
                      paymentButton = !paymentButton;
                      index = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),

      //ProjectScreen(), //homePage(), //ProjectScreen(),
    );
  }
}
