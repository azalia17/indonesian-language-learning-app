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
      // appBar: AppBar(ScreenTitleWidget(title: 'Anggota Keluarga',)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              children: [
                ScreenTitleWidget(title: 'Kosa Kata'),
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
// class TopicList extends StatelessWidget {
//   final String title;
//   final List<TopicVocab> listOfTopic;
//   const TopicList({Key? key, required this.title, required this.listOfTopic}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           TitleWidget(title: title),
//           SizedBox(
//             height: listOfTopic.length * 75,
//             child: LayoutBuilder(
//                 builder: (BuildContext context, BoxConstraints constraints) {
//                   return VocabList(topic: listOfTopic,);
//                 }
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class VocabList extends StatelessWidget {
//   final List<TopicVocab> topic;
//
//   const VocabList({Key? key, required this.topic}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     TopicVocab topicList;
//     return ListView.builder(
//       padding: EdgeInsets.symmetric(vertical: 5),
//       physics: NeverScrollableScrollPhysics(),
//         itemBuilder: (context, index) {
//           topicList = topic[index];
//           return TopicWidget(topic: topicList,);
//         },
//         itemCount: topic.length,
//     );
//   }
// }
//
