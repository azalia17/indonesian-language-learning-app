import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_app/model/aksara_model.dart';
import 'package:language_app/screen/characters_drawing_screen.dart';

import '../constant/colors.dart';
import '../widget/screen_title_widget.dart';

class CharactersDetailScreen extends StatelessWidget {
  final AksaraData aksaraData;
  const CharactersDetailScreen({Key? key, required this.aksaraData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: 'Detail Aksara',),
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
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                aksaraData.javanese,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Javanese',
                  fontSize: 200,
                  height: 1,
                  letterSpacing: 0
                ),
              ),
              Text(
                aksaraData.indonesian,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  height: 0.1,
                  color: Colors.black38
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'aksara ini biasanya digunakan untuk skdhjds nsfhsjd hjfdk fdsfsdfsd',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  // height: 0.1
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 20.0),
        child: AnimatedButton(
          onPressed: () {
            Get.to(CharactersDrawingScreen(aksaraData: aksaraData,));
          },
          height: 50,
          width: MediaQuery.of(context).size.width - 40,
          color: kCategory4,
          child: Text(
            'Coba Tulis!',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kCategoryBackground4),
          ),
        ),
      ),


    );
  }
}
