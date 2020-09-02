import 'package:flutter/material.dart';
import 'package:ipekyoluasya/utils/searchBar.dart';

class mapScreen extends StatelessWidget {
  const mapScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySearchBar(),
        Container(
          child: Image.asset("assets/images/world.png"),
        ),
      ],
    );
  }
}
