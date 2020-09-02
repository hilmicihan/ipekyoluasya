import 'package:flutter/material.dart';
import 'package:ipekyoluasya/constants.dart';
import 'package:ipekyoluasya/utils/searchBar.dart';

class ProfileScreen extends StatelessWidget {
  String totalDay = "245";
  String totalDay2 = "Gündür Bizimlesiniz";
  String totalProje = "5";
  String totalProje2 = "Proje Başlattınız";

  String totalDonate = "7642t";
  String totalDonate2 = "Bağış Yaptınız";

  String totalInvite = "19";
  String totalInvite2 = "Kişi Davet Ettiniz";
  ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MySearchBar(),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/profile.png"),
              ],
            ),
            Text("@chkaraaslan"),
            SizedBox(height: 20),
            ProfileChart(
                height: height,
                width: width,
                totalDay: totalDay,
                totalDay2: totalDay2,
                totalProje: totalProje,
                totalProje2: totalProje2),
            SizedBox(height: 30),
            ProfileChart(
                height: height,
                width: width,
                totalDay: totalDonate,
                totalDay2: totalDonate2,
                totalProje: totalInvite,
                totalProje2: totalInvite2)
          ],
        ),
      ),
    );
  }
}

class ProfileChart extends StatelessWidget {
  const ProfileChart({
    Key key,
    @required this.height,
    @required this.width,
    @required this.totalDay,
    @required this.totalDay2,
    @required this.totalProje,
    @required this.totalProje2,
  }) : super(key: key);

  final double height;
  final double width;
  final String totalDay;
  final String totalDay2;
  final String totalProje;
  final String totalProje2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: primaryColor,
          ),
          height: height * 0.15,
          width: width * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                totalDay,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                totalDay2,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: primaryColor,
          ),
          height: height * 0.15,
          width: width * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                totalProje,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                totalProje2,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
