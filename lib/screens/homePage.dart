import 'package:flutter/material.dart';
import 'package:ipekyoluasya/screens/storyView.dart';

class homePage extends StatelessWidget {
  const homePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF6FA12E),
      ),
      body: Column(
        children: [
          StoryData(),
        ],
      ),
    );
  }
}
