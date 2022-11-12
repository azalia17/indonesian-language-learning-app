import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_app/screen/vocabulary_detail_screen.dart';

import '../constant/colors.dart';
import '../controller/question_controller.dart';
import '../model/topic_vocab_model.dart';
import '../widget/screen_title_widget.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TopicVocab vocabb;
     // topic1VocabList[1];

    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: 'Skor tes',),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 75,
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Skor",
                style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black38
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${_controller.numOfCorrectAnswer * 10}",
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 140,
                        color: kFontTest
                    ),
                  ),
                  Text("/${_controller.questions.length * 10}",
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: kButtonTest.withOpacity(.5)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 20.0),
        child: AnimatedButton(
          onPressed: () {
            Navigator.pop(context);
            // _controller.dispose();
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => VocabularyDetailScreen(vocab: topic1VocabList[1],)));
          },
          height: 55,
          width: (MediaQuery.of(context).size.width) - 40,
          color: kButtonTest,
          child: Text(
            'Kembali ke Materi!',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kFontTest),
          ),
        ),
      ),

    );
  }
}
