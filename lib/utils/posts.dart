import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Post extends StatefulWidget {
  String path;
  Text description;
  Post({this.path, this.description});

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  double likePercent = 0.1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        width: width * 0.8,
        height: height * 0.52,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.path),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.description,
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
        ), /* add child content here */
      ),
    );
  }
}

class PostBar extends StatefulWidget {
  PostBar({Key key}) : super(key: key);

  @override
  _PostBarState createState() => _PostBarState();
}

class _PostBarState extends State<PostBar> {
  bool likeIcon = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Row(
      children: [
        SizedBox(width: width * 0.08),
        IconButton(
            icon: Icon(Icons.favorite),
            color: likeIcon ? Colors.grey : Colors.red,
            onPressed: () {
              setState(() {
                likeIcon = !likeIcon;
              });
            }),
        SizedBox(width: width * 0.50),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.paperPlane,
            color: Color(0xFF6FA12E),
          ),
          onPressed: null,
        ),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bookmark,
            color: Color(0xFF6FA12E),
          ),
          onPressed: null,
        ),
      ],
    ));
  }
}
