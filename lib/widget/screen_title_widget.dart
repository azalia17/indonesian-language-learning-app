import 'package:flutter/material.dart';

class ScreenTitleWidget extends StatelessWidget {
  final String title;
  final Color titleColor;
  const ScreenTitleWidget({Key? key, required this.title, this.titleColor = Colors.black45}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: titleColor,
        backgroundColor: Colors.transparent
      ),
    );
  }
}

