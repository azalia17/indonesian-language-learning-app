import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:language_app/constant/colors.dart';
import 'package:language_app/controller/question_controller.dart';
import 'package:language_app/widget/progress_bar_widget.dart';
import 'package:language_app/widget/question_card_widget.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // so thet we have access to our controller
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Pertanyaan",
                      style: TextStyle(
                          fontFamily: "poppins",
                          color: kSummaryFullPercentage,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3
                      ),
                    ),
                    Obx(() => Text.rich(
                        TextSpan(
                            text: "${_questionController.questionNumber.value}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(color: kFontTest),
                            children: [
                              TextSpan(
                                  text: "/",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(color: kSummaryFullPercentage)
                              ),
                              TextSpan(
                                  text: "${_questionController.questions.length}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(color: kSummaryFullPercentage)
                              )
                            ]
                        )
                    )),
                  ],
                ),
              ),

              const SizedBox(height: 4,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ProgressBarWidget(),
              ),

              Expanded(
                  child: PageView.builder(
                      // block swipe to next question
                      physics: NeverScrollableScrollPhysics(),
                      controller: _questionController.pageController,
                      onPageChanged: _questionController.updateTheQuestionNum,
                      itemCount: _questionController.questions.length,
                      itemBuilder: (context, index) => QuestionCardWidget(
                        question: _questionController.questions[index],
                      )
                  )
              )
              // Divider(thickness: 1,),
            ],
          )
    ),
    );
  }
}
