// @dart=2.9

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

import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class VocabularyDetailScreen extends StatelessWidget {
  final String title;
  final String id;

  const VocabularyDetailScreen({Key key,  this.id, this.title}) : super(key: key);

  Future<List> getData() async {
    final Map<String, String> _queryParameters = <String, String>{
      'id': '${id}',
    };
    var url = Uri.https("azaliacollege.000webhostapp.com", "getVocabData.php", _queryParameters);
    final response = await http.get(url);
    return json.decode(response.body);
  }

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
                SummaryVocabWidget(id: id,),
                SizedBox(height: 20,),
                TitleWidget(title: 'Daftar Kata',),
                SizedBox(height: 8,),
                FutureBuilder<List>(
                  future: getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) print(snapshot.error);
                    else print(snapshot.data);

                    return snapshot.hasData ? WordList(list: snapshot.data,) : Center(child: CircularProgressIndicator(),);
                  },
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
  final List list;

  const WordList({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: list.length * 82.0,
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  // WordTopicVocab wordList = word[index];
                  // return WordWidget(word: wordList);
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Container(
                      height: 75,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(
                            color: Colors.black38,
                            width: 2.0,
                            style: BorderStyle.solid
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            list[index]['image'],
                            height: 50,
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                list[index]['indonesian'],
                                // word.indonesian,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  color: Colors.black38,
                                  height: 1.7,
                                ),
                              ),
                              Text(
                                list[index]['translation'],
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: list.length,
              );
            }
        ));
    // return ListView.builder(
    //   physics: NeverScrollableScrollPhysics(),
    //   itemBuilder: (context, index) {
    //     WordTopicVocab wordList = word[index];
    //     return WordWidget(word: wordList);
    //   },
    //   itemCount: word.length,
    // );
  }
}
