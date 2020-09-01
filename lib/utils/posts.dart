import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  String path;
  Post({this.path});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          image: AssetImage(path),
          width: width * 0.8,
          height: height * 0.55,
          fit: BoxFit.cover,
        ),
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
