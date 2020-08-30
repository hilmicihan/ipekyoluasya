import 'package:flutter/material.dart';

class iconBar extends StatefulWidget {
  const iconBar({Key key}) : super(key: key);

  @override
  _iconBarState createState() => _iconBarState();
}

class _iconBarState extends State<iconBar> {
  bool exploreButton = false;
  bool favoriteButton = false;
  bool flightButton = false;
  bool paymentButton = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.favorite),
              color: favoriteButton
                  ? Color(0xFFFFCD00)
                  : Colors.grey, // when pressed it will return yellow
              onPressed: () {
                setState(() {
                  favoriteButton = !favoriteButton;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.explore),
              color: exploreButton
                  ? Color(0xFFFFCD00)
                  : Colors.grey, // when pressed it will return yellow
              onPressed: () {
                setState(() {
                  exploreButton = !exploreButton;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.flight_takeoff),
              color: flightButton
                  ? Color(0xFFFFCD00)
                  : Colors.grey, // when pressed it will return yellow
              onPressed: () {
                setState(() {
                  flightButton = !flightButton;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.payment),
              color: paymentButton
                  ? Color(0xFFFFCD00)
                  : Colors.grey, // when pressed it will return yellow
              onPressed: () {
                setState(() {
                  paymentButton = !paymentButton;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
