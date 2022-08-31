import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';
import 'package:language_app/model/topic_vocab_model.dart';
import 'package:language_app/widget/option_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../widget/screen_title_widget.dart';

class VocabularyTestScreen extends StatelessWidget {
  final TopicVocab vocab;

  const VocabularyTestScreen({Key? key, required this.vocab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                ScreenTitleWidget(title: 'Anggota Keluarga',),
                SizedBox(height: 3,),
                LinearPercentIndicator(
                  alignment: MainAxisAlignment.center,
                  width: 160.0,
                  lineHeight: 12.0,
                  percent: 0.5,
                  trailing: Text(
                    '5/10',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: kSummaryPercentage
                    ),
                  ),
                  barRadius: Radius.circular(5.0),
                  backgroundColor: kSummaryFullPercentage,
                  progressColor: kSummaryPercentage,
                ),
                SizedBox(height: 20,),
                Image.asset(
                  'assets/images/familyVocabFather.png',
                  height: 200,
                ),
                Text(
                  'Ayah',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 48
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 210,
                    child: OptionWidget(options: vocabQuizOption1,)
                )
              ],
            ),
          ),
        ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedButton(
              onPressed: () {},
              height: 55,
              width: (MediaQuery.of(context).size.width *1/3) - 25,
              color: kButtonSkip,
              child: Text(
                'Lewati',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kFontButtonSkip),
              ),
            ),
            AnimatedButton(
              onPressed: () {},
              height: 55,
              width: (MediaQuery.of(context).size.width * 2/3) - 25,
              color: kButtonTest,
              child: Text(
                'Selanjutnya',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kFontTest),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
