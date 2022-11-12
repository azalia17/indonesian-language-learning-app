import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_app/constant/colors.dart';
import 'package:language_app/model/topic_vocab_model.dart';
import 'package:language_app/screen/quiz_screen.dart';
import 'package:language_app/widget/screen_title_widget.dart';
import 'package:language_app/widget/title_widget.dart';
import 'package:language_app/widget/word_widget.dart';

import '../controller/question_controller.dart';
import '../widget/summary_vocab_widget.dart';

class VocabularyDetailScreen extends StatelessWidget {
  final TopicVocab vocab;
  const VocabularyDetailScreen({Key? key,  required this.vocab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());

    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: 'Anggota Keluarga',),
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
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0),
            child: Column(
              children: [
                TitleWidget(title: 'Ringkasan',),
                SizedBox(height: 8,),
                SummaryVocabWidget(vocab: vocab,),
                SizedBox(height: 20,),
                TitleWidget(title: 'Daftar Kata',),
                SizedBox(height: 8,),
                SizedBox(
                  height: vocab.words.length * 82,
                  child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return WordList(word: vocab.words);
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 20.0),
        child: AnimatedButton(
          onPressed: () {
            Navigator.of(context)
                // .push(MaterialPageRoute(builder: (context) => VocabularyTestScreen(vocab: vocab,)));
                .push(MaterialPageRoute(builder: (context) => QuizScreen()));

            _controller.startQuiz();
          },
          height: 55,
          width: MediaQuery.of(context).size.width - 40,
          color: kButtonTest,
          child: Text(
            'Coba Tes!',
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

class WordList extends StatelessWidget {
  final List<WordTopicVocab> word;

  const WordList({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        WordTopicVocab wordList = word[index];
        return WordWidget(word: wordList);
      },
      itemCount: word.length,
    );
  }
}
