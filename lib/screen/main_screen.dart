import 'package:flutter/material.dart';
import 'package:language_app/widget/category_widget.dart';
import 'package:language_app/widget/title_widget.dart';
import 'package:language_app/widget/user_profile_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: const [
              SizedBox(height: 20,),
              UserProfileWidget(),
              SizedBox(height: 20,),
              TitleWidget(title: 'Kategori'),
              SizedBox(height: 10,),
              CategoryWidget()
            ],
          ),
        ),
      ),
    );
  }
}
