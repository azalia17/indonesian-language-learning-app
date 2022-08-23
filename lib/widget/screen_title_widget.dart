import 'package:flutter/material.dart';

class ScreenTitleWidget extends StatelessWidget {
  final String title;
  const ScreenTitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.black45
          ),
        ),
      ),
    );
  }
}

