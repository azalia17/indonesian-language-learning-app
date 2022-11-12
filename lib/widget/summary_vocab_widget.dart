import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';
import 'package:language_app/model/topic_vocab_model.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SummaryVocabWidget extends StatelessWidget {
  final TopicVocab vocab;
  const SummaryVocabWidget({Key? key, required this.vocab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                vocab.words.length.toString(),
                style: TextStyle(
                  fontSize: 64,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  height: 1,
                  color: kSummaryPercentage
                ),
              ),
              Text(
                'Total Kata',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black45,
                  fontSize: 12,
                  height: 0.5
                ),
              )
            ],
          ),
          Container(
            height: 100,
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kBgSummary,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 35.0,
                  lineWidth: 16.0,
                  percent: vocab.progress / 100,
                  progressColor: kSummaryPercentage,
                  backgroundColor: kSummaryFullPercentage,
                ),
                SizedBox(width: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 48,
                        color: kSummaryPercentage,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        height: 0
                      ),
                    ),
                    Text(
                      '/',
                      style: TextStyle(
                          fontSize: 32,
                          color: kFontSummary,
                          fontFamily: 'Poppins'
                      ),
                    ),
                    Text(
                      '5 kali uji',
                      style: TextStyle(
                          fontSize: 22,
                          color: kFontSummary,
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
