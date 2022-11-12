import 'package:flutter/material.dart';
import 'package:language_app/model/folklore_model.dart';
import 'package:language_app/widget/folklore_widget.dart';

import '../constant/colors.dart';
import '../widget/screen_title_widget.dart';

class FolkloreScreen extends StatelessWidget {
  const FolkloreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: 'Cerita Rakyat',),

        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 72,
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              height: folkloresData.length * 140,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 5),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  FolkloreData storiesList = folkloresData[index];
                  return FolkloreWidget(story: storiesList,);
                },
                itemCount: folkloresData.length,
              ),
            )
          ),
        // child: Text(
        //   'Folklore Screen',
        //   style: TextStyle(
        //       fontFamily: "poppins",
        //       fontWeight: FontWeight.bold,
        //       fontSize: 20,
        //       color: kCategoryBackground1
        //   ),
        // ),
        ),
      ),
    );
  }
}
