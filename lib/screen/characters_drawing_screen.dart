import 'dart:ui';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/colors.dart';
import '../model/aksara_model.dart';
import '../widget/character_drawing_widget.dart';
import '../widget/screen_title_widget.dart';

class CharactersDrawingScreen extends StatelessWidget {
  final AksaraData aksaraData;

  const CharactersDrawingScreen({Key? key, required this.aksaraData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> steps = aksaraData.steps;
    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: 'Menulis Aksara',),
        iconTheme: IconThemeData(
          color: Colors.black45, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 75,
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Text(
                aksaraData.javanese,
                style: TextStyle(
                  fontFamily: 'Javanese',
                  fontSize: 120,
                  height: .5,
                ),
              ),
              Text(
                aksaraData.indonesian,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    height: 0.1,
                    color: Colors.black38
                ),
              ),
              SizedBox(height: 20.0,),
              Expanded(
                // flex: 4,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  padding: EdgeInsets.symmetric(horizontal: 80),
                  crossAxisSpacing: 12,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: List.generate(steps.length, (index) =>
                      Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: kCategory5.withOpacity(.2),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: SvgPicture.asset(steps[index]),
                      )
                  ).toList(),
                ),
              ),

              // SizedBox(height: 20,),
              CharacterDrawingWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 20.0),
        child: Row(
          children: [
            AnimatedButton(
              onPressed: () {},
              height: 50,
              width: MediaQuery.of(context).size.width - 40,
              color: kCategory5,
              child: Text(
                'Coba Cek!',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )

          ],
        ),
      ),
    );
  }
}
/*

class _DrawingPainter extends CustomPainter {
  final List<DrawingPoint> drawingPoints;

  _DrawingPainter(this.drawingPoints);

  List<Offset> offsetsList = [];

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < drawingPoints.length; i++) {
      if (drawingPoints[i] != null && drawingPoints[i + 1] != null) {
        canvas.drawLine(drawingPoints[i].offset, drawingPoints[i + 1].offset,
            drawingPoints[i].paint);
      } else if (drawingPoints[i] != null && drawingPoints[i + 1] == null) {
        offsetsList.clear();
        offsetsList.add(drawingPoints[i].offset);

        canvas.drawPoints(PointMode.points, offsetsList, drawingPoints[i].paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class DrawingPoint {
  Offset offset;
  Paint paint;

  DrawingPoint(this.offset, this.paint);
}

*/
/*
body: GestureDetector(
        onPanStart: (details) {
          setState(() {
            drawingPoints.add(
                DrawingPoint(
                    details.localPosition,
                    Paint()
                      ..color = selectedColor
                      ..strokeWidth = strokeWidth
                      ..strokeCap = StrokeCap.round
                )
            );
          });
        },
        onPanUpdate: (details) {
          setState(() {
            drawingPoints.add(
                DrawingPoint(
                    details.localPosition,
                    Paint()
                      ..color = selectedColor
                      ..strokeWidth = strokeWidth
                      ..strokeCap = StrokeCap.round
                )
            );
          });
        },
        onPanEnd: (details) {
          setState(() {
            drawingPoints.add(null);
          });
        },
        child: CustomPaint(
          painter: _DrawingPainter(drawingPoints),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black38
            ),
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width - 40,
          ),
        ),

      ),
* */