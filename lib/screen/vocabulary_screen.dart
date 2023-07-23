import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_app/model/topic_vocab_model.dart';
import 'package:language_app/screen/vocabulary_detail_screen.dart';
import 'package:language_app/widget/screen_title_widget.dart';
import 'package:language_app/widget/title_widget.dart';
import 'package:language_app/widget/topic_widget.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../constant/colors.dart';
import '../extentions.dart';

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
        backgroundColor: Colors.transparent,
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
                TopicList(title: 'Topik 1', id: 1),
                TopicList(title: 'Topik 2', id: 2),
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
  final int id;
  // final List<TopicVocab> topic;
  const TopicList({Key? key, required this.title, required this.id}) : super(key: key);

  Future<List> getData() async {
    final Map<String, String> _queryParameters = <String, String>{
      'id': '${id}',
    };
    var url = Uri.https("azaliacollege.000webhostapp.com", "getVocabTopic.php", _queryParameters);
    final response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Column(
        children: [
          TitleWidget(title: title),
          FutureBuilder<List>(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              else print(snapshot.data);

              return snapshot.hasData ? ItemList(list: snapshot.data,) : Center(child: CircularProgressIndicator(),);
            },
          ),

        ],
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List? list;
  const ItemList({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: list!.length * 75.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 5),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          // TopicVocab topicList = topic[index];
          // return TopicWidget(topic: topicList,);

          if (list?[index]['availability'] ==  0) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: screenWidth,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  side: BorderSide(width: 1.5, color: Colors.black12),
                ),
                onPressed: null,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(
                      //   list[index]['icon'],
                      //   color: Colors.black26,
                      //   size: 23,
                      //   semanticLabel: list[index]['name'],
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              list?[index]['name'],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 150,
                              animation: false,
                              lineHeight: 5.0,
                              animationDuration: 0,
                              percent: 0.0,
                              barRadius: Radius.circular(5.0),
                              progressColor: kPercentageTopic1,
                              backgroundColor: Colors.black12,
                              trailing: const Text(
                                "0%",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.lock,
                        color: Colors.black26,
                        size: 15,
                        semanticLabel: 'Lock',
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          else {
            return Container(
              width: screenWidth,
              padding: EdgeInsets.symmetric(vertical: 5),
              // child: Expanded(
              child: AnimatedButton(
                onPressed: () {
                  Get.to(VocabularyDetailScreen(id: list?[index]['id'],));
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => VocabularyDetailScreen(vocab: topic,)));
                },
                width: screenWidth - 40,
                height: 62,
                color: kBgButtonTopic1,
                shadowDegree: ShadowDegree.dark,
                enabled: true,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(
                      //   list[index]['icon'],
                      //   // topic.icon,
                      //   color: kPercentageTopic1,
                      //   size: 23,
                      //   semanticLabel: 'Family',
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              list?[index]['name'],
                              // topic.name,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 150,
                              animation: false,
                              lineHeight: 5.0,
                              animationDuration: 2000,
                              percent: 70 / 100.0,
                              barRadius: Radius.circular(5.0),
                              progressColor: kPercentageTopic1,
                              backgroundColor: kFullPercentageTopic1,
                              trailing: Text(
                                list?[index]['progress'],
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  color: kPercentageTopic1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.black87,
                        size: 15,
                        semanticLabel: 'Arrow',
                      ),
                    ],
                  ),
                ),
              ),
              // ),
            );
          }
        },
        itemCount: list?.length,
      ),
    );
  }
}
