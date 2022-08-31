import 'package:flutter/material.dart';
import 'package:language_app/model/topic_vocab_model.dart';
import 'package:language_app/widget/screen_title_widget.dart';
import 'package:language_app/widget/title_widget.dart';
import 'package:language_app/widget/topic_widget.dart';

class VocabularyScreen extends StatelessWidget {

  const VocabularyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: 'Kosa Kata',),
        iconTheme: IconThemeData(
          color: Colors.black45, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 75,
        shadowColor: Colors.transparent,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0),
          child: Container(
            child: Column(
              children: [
                TopicList(title: 'Topik 1', topic: topic1VocabList),
                TopicList(title: 'Topik 2', topic: topic2VocabList),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopicList extends StatelessWidget {
  final String title;
  final List<TopicVocab> topic;
  const TopicList({Key? key, required this.title, required this.topic
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Column(
        children: [
          TitleWidget(title: title),
          SizedBox(
            height: topic.length * 75,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 5),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                TopicVocab topicList = topic[index];
                return TopicWidget(topic: topicList,);
              },
              itemCount: topic.length,
            ),
          ),
        ],
      ),
    );
  }
}
