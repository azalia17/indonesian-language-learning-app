import 'package:flutter/material.dart';

import '../widget/category_widget.dart';
import '../widget/title_widget.dart';
import '../widget/user_profile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
