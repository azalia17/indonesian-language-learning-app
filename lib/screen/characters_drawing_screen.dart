// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';

import '../widget/character_drawing_widget.dart';
import '../widget/screen_title_widget.dart';

class CharactersDrawingScreen extends StatefulWidget {
  const CharactersDrawingScreen({Key key}) : super(key: key);

  @override
  State<CharactersDrawingScreen> createState() => _CharactersDrawingScreenState();
}

class _CharactersDrawingScreenState extends State<CharactersDrawingScreen> {
  List<DrawingPoint> drawingPoints = [];
  Color selectedColor = Colors.black87;
  double strokeWidth = 5;

  @override
  Widget build(BuildContext context) {
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
        child: CharacterDrawingWidget(),
      ),
    );
  }
}

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