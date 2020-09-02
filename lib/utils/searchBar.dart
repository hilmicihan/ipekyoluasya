import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/icon_profile.png"),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 16),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.blue[300]),
                  border: InputBorder.none),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            Icons.search,
            color: Colors.blue[900],
          ),
        ),
      ],
    );
  }
}
