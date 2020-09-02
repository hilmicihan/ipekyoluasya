import 'dart:ffi';
import 'dart:wasm';

import 'package:flutter/material.dart';

import 'package:ipekyoluasya/constants.dart';
import 'package:ipekyoluasya/utils/story.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StoryData extends StatefulWidget {
  @override
  _StoryDataState createState() => _StoryDataState();
}

class _StoryDataState extends State<StoryData> {
  List<Text> _postText = [
    Text(
      "Yetim Sofrası",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  ];
  List<Story> _storyImages = [
    Story(path: "assets/images/image1.png", name: "child1"),
    Story(path: "assets/images/image2.png", name: "child2"),
    Story(path: "assets/images/image3.png", name: "child3"),
    Story(path: "assets/images/image4.png", name: "child4"),
    Story(path: "assets/images/image5.png", name: "child5"),
    Story(path: "assets/images/image6.png", name: "child6"),
  ];

  List<Text> _menuData = [
    Text("Kurban",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
    Text("Ramazan",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
    Text("Yetim",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
    Text("Su Kuyusu",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
    Text("Sağlık",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
    Text("Eğitim",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: menuFontSize)),
  ];
  double likePercent = 0.1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                ),
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _storyImages.map((story) {
                    return Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(
                              width: 3,
                              color: Color(0xFF6FA12E),
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(
                              2,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image(
                                image: AssetImage(story.path),
                                width: 65,
                                height: 65,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //Text(story.name),
                      ],
                    );
                  }).toList(),
                ),
              ),
              //menu View Part
              //
              Container(
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
              ),
              //post Images Part
              Container(
                width: width * 0.8,
                height: height * 0.52,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sofra.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: postLikeBar(width), /* add child content here */
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column postLikeBar(double width) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _postText[0],
              InkWell(
                onTap: () {
                  setState(() {
                    if (likePercent < 0.9) {
                      likePercent += 0.1;
                    } else {
                      likePercent = 0;
                    }
                  });
                },
                child: Container(
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/icon_like.png',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(7.0),
          child: LinearPercentIndicator(
            width: width * 0.76,
            animation: false,
            lineHeight: 10.0,
            animationDuration: 1,
            percent: likePercent,
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Color(0xFFFFCD00),
          ),
        ),
      ],
    );
  }
}
