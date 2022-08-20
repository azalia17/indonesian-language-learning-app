import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TopicWidget extends StatefulWidget {
  const TopicWidget({Key? key}) : super(key: key);

  @override
  State<TopicWidget> createState() => _TopicWidgetState();
}

class _TopicWidgetState extends State<TopicWidget> {
  bool unlocked = true;

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    if (unlocked == true) {
      return UnlockedTopic();
    } else {
      return LockedTopic();
    }
  }
}

class UnlockedTopic extends StatelessWidget {
  const UnlockedTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      // padding: EdgeInsets.symmetric(horizontal: 20),
      // child: Expanded(
      child: AnimatedButton(
        onPressed: () {
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => AnotherPage()));
        },
        width: screenWidth - 40,
        height: 60,
        color: kBgButtonTopic1,
        shadowDegree: ShadowDegree.dark,
        enabled: true,
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.family_restroom,
                color: kPercentageTopic1,
                size: 23,
                semanticLabel: 'Family',
              ),
/*
              Container(
                width: 23,
                height: 23,
                child: Expanded(
                  child: Image.asset(
                    'assets/images/family.png',
                  ),
                ),
              ),
*/
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Anggota Keluarga',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 150,
                      animation: false,
                      lineHeight: 5.0,
                      animationDuration: 2000,
                      percent: 0.8,
                      // center: Text("90.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: kPercentageTopic1,
                      backgroundColor: kFullPercentageTopic1,
                      trailing: const Text(
                        "80%",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Popppins',
                          color: kPercentageTopic1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Icon(Icons.play_arrow,
                color: Colors.black87,
                size: 15,
                semanticLabel: 'Star',),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}

class LockedTopic extends StatelessWidget {
  const LockedTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      // padding: EdgeInsets.symmetric(horizontal: 20),
      // child: Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          // enabledMouseCursor: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          side: BorderSide(width: 1.5, color: Colors.black12),
        ),
        onPressed: null,
        // width: screenWidth - 40,
        // height: 60,
        // color: kBgButtonTopic1,
        // shadowDegree: ShadowDegree.dark,
        // enabled: true,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.fastfood,
                color: Colors.black26,
                size: 23,
                semanticLabel: 'Family',),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Makanan',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black26,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 150,
                      animation: false,
                      lineHeight: 5.0,
                      animationDuration: 0,
                      percent: 0.0,
                      // center: Text("90.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: kPercentageTopic1,
                      backgroundColor: Colors.black12,
                      trailing: const Text(
                        "0%",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Popppins',
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Icon(Icons.lock,
                color: Colors.black26,
                size: 15,
                semanticLabel: 'Star',),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}

