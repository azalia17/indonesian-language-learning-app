import 'package:flutter/material.dart';

class TranslationScreen extends StatelessWidget {
  const TranslationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Translation Screen',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 48
          ),
        ),
      ),
    );
  }
}
