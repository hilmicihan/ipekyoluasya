import 'package:flutter/material.dart';

import 'package:ipekyoluasya/screens/storyView.dart';
import 'package:ipekyoluasya/utils/searchBar.dart';

class homePage extends StatelessWidget {
  const homePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          MySearchBar(),
          StoryData(),
        ],
      ),
    );
  }
}
