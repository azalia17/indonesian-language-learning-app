import 'package:flutter/material.dart';
import 'package:language_app/widget/category_widget.dart';
import 'package:language_app/widget/title_widget.dart';
import 'package:language_app/widget/topic_widget.dart';
import 'package:language_app/widget/word_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TitleWidget(title: 'Saat ini'),
              TopicWidget(),
              CategoryWidget(),
              // CategoryButtonWidget(),
              WordWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
