import 'package:flutter/material.dart';
import 'package:language_app/model/topic_vocab_model.dart';
import 'package:language_app/widget/screen_title_widget.dart';
import 'package:language_app/widget/title_widget.dart';
import 'package:language_app/widget/word_widget.dart';

class DetailVocabularyScreen extends StatelessWidget {
  final List<WordTopicVocab> word;
  const DetailVocabularyScreen({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ScreenTitleWidget(title: 'Anggota Keluarga'),
              TitleWidget(title: 'Ringkasan',),
              TitleWidget(title: 'Daftar Kata',),
              Flexible(
                child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      return WordList(word: word);
                    }
                ),
              ),

            ],
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
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        WordTopicVocab wordList = word[index];
        return WordWidget(word: wordList);
      },
      itemCount: word.length,
    );
  }
}
