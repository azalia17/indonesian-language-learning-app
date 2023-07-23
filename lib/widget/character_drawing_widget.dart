import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CharacterDrawingWidget extends StatefulWidget {
  const CharacterDrawingWidget({Key? key}) : super(key: key);

  @override
  State<CharacterDrawingWidget> createState() => _CharacterDrawingWidgetState();
}

class _CharacterDrawingWidgetState extends State<CharacterDrawingWidget> {
  List<DrawingPoint>? drawingPoints = [];
  Color selectedColor = Colors.black87;
  double strokeWidth = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            // shape: ShapeBorder,
            child: GestureDetector(
              onPanStart: (details) {
                setState(() {
                  drawingPoints?.add(
                      DrawingPoint(
                          details.localPosition,
                          Paint()
                            ..color = selectedColor
                            ..isAntiAlias = true
                            ..strokeWidth = strokeWidth
                            ..strokeCap = StrokeCap.round
                      )
                  );
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  drawingPoints?.add(
                      DrawingPoint(
                          details.localPosition,
                          Paint()
                            ..color = selectedColor
                            ..strokeWidth = strokeWidth
                            ..isAntiAlias = true
                            ..strokeCap = StrokeCap.round
                      )
                  );
                });
              },
              onPanEnd: (details) {
                setState(() {
                  drawingPoints?.add(null!);
                });
              },
              child: CustomPaint(
                painter: _DrawingPainter(drawingPoints!),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width - 40,
                ),
                size: Size(MediaQuery.of(context).size.height * 0.5,MediaQuery.of(context).size.width - 40),
              ),

            ),
          ),
          InkWell(
            onTap: () => setState(() => drawingPoints = []),
            child: Container(
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black12
              ),
              child: Icon( Icons.close, color: Colors.black38,)
            ),
          )
        ],
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