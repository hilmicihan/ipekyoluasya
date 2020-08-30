import 'package:flutter/material.dart';
import 'package:ipekyoluasya/constants.dart';
import 'package:ipekyoluasya/iconbar.dart';
import 'package:ipekyoluasya/utils/story.dart';

class StoryData extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
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
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage("assets/images/sofra.png"),
                    width: 360,
                    height: 445,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                width: 300,
                height: 60,
                child: iconBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
