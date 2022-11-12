import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:language_app/controller/question_controller.dart';

import '../model/quiz_model.dart';
import 'opt_widget.dart';

class QuestionCardWidget extends StatelessWidget {
  const QuestionCardWidget({Key? key, required this.question,}) : super(key: key);

  final Question question;


  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image.asset(
            question.image,
            height: 150,
          ),
          Text(
            question.question,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 40,
            ),
          ),
          ...List.generate(
              question.options.length,
                  (index) => OptWidget(
                      text: question.options[index],
                      index: index,
                      press: () => _controller.checkAnswer(question, index))
          )

        ],
      ),
    )
    ;
  }
}
