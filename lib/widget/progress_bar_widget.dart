import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:language_app/controller/question_controller.dart';

import '../constant/colors.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
        color: kBgSummary,
        // border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
          builder: (controller) {
          // print(object)
          return Stack(
            children: [
              // Layout builder provide us the available space for the container
              // constraints.maxWidth needed for the animation
              LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [kButtonSkip, kProfileGradientYellow2, ],
                          begin: Alignment.centerRight,
                          end: Alignment(-1.0, -1.0)
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )
              ),
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.access_time_outlined,
                          size: 20,
                          color: Colors.black38,
                        ),
                        Text(
                          "${10 - (controller.animation.value * 10).round()}",
                          style: const TextStyle(
                            fontFamily: "poppins",
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  )
              )
            ],
          );
        }
      ),
    );
  }
}
