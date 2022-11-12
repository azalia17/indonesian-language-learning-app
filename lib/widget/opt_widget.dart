import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:language_app/controller/question_controller.dart';

import '../constant/colors.dart';

class OptWidget extends StatelessWidget {
  const OptWidget({Key? key, required this.text, required this.index, required this.press}) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qController) {

        Color getTheRightColor() {
          if (qController.isAnswered) {
            if (index == qController.correctAnswer) {
              return kCategoryBackground4;
            } else if (index == qController.selectedAnswer &&
              qController.selectedAnswer != qController.correctAnswer) {
                return kCategoryBackground1;
            }
          }
          return Colors.black38;
        }

        IconData getTheRightIcon() {
          return getTheRightColor() == kCategoryBackground1 ? Icons.close : Icons.done;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$text",
                  style: TextStyle(color: getTheRightColor(), fontSize: 16),
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: getTheRightColor() == Colors.black38 ? Colors.transparent : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getTheRightColor())
                  ),
                  child: getTheRightColor() == Colors.black38 ? null : Icon(getTheRightIcon(), size: 16, color: Colors.white,),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
