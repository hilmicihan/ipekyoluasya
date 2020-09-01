import 'package:flutter/material.dart';
import 'package:ipekyoluasya/utils/posts.dart';
import 'package:ipekyoluasya/utils/searchBar.dart';

import '../constants.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MySearchBar(),
            SizedBox(
              height: 30,
            ),
            MenuView(),
            Post(path: "assets/images/posts/post1.png"),
            PostBar(),
            Post(path: "assets/images/posts/post2.png"),
            PostBar(),
            Post(path: "assets/images/posts/post3.png"),
            PostBar(),
            Post(path: "assets/images/posts/post4.png"),
            PostBar(),
          ],
        ),
      ),
    );
  }
}

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Text> _menuData = [
      Text("Kurban",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
      Text("Ramazan",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
      Text("Yetim",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
      Text("Su Kuyusu",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
      Text("Sağlık",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
      Text("Eğitim",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: _menuData.map(
          (name) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: name,
                ),
              ],
            );
          },
        ).toList(),
      ),
    );
  }
}
