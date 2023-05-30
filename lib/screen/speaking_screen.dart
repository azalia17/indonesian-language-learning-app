import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_app/constant/colors.dart';

import '../widget/screen_title_widget.dart';
import '../controller/speaking_controller.dart';

class SpeakingScreen extends StatelessWidget {
  final String title;
  const SpeakingScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SpeakingController _speakingController = Get.put(SpeakingController());
    String question = 'Nuwun sewu';

    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: title,),
        iconTheme: IconThemeData(
          color: Colors.black45,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 75,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width - 40,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kCategory3.withOpacity(.5)
                ),
                child: Column(
                  children: [
                    Text(
                      'ꦱꦢꦄ ꦱꦢ',
                      style: TextStyle(
                        fontFamily: 'Javanese',
                        fontSize: 35,
                        color: Colors.black45
                      ),
                    ),
                    Expanded(
                        child: Center(
                            child: Text(
                              question,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold
                              ),
                            )

                        )
                    ),
                    Text(
                        'permisi',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.black45
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 7,),
              Center(
                child: Obx(() =>
                    Text(
                      _speakingController.speechText.value,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        color: kCategoryBackground3,
                      ),
                    ),
                ),
              ),
              // if (_speakingController.speechText.value.toLowerCase() == question.toLowerCase()){
              //   showModalBottomSheet(
              //       context: context,
              //       builder: (BuildContext context) {
              //
              //       }
              //   )
              // }
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(
          () => AvatarGlow(
            animate: _speakingController.isListening.value,
            glowColor: kCategoryBackground3,
            endRadius: 90.0,
            duration: Duration(milliseconds: 2000),
            repeat: true,
            repeatPauseDuration: Duration(milliseconds: 100),
            child: FloatingActionButton(
              backgroundColor: kCategory3,
              elevation: 0,
              child: Icon(
                _speakingController.isListening.value ? Icons.mic : Icons.mic_none,
              ),
              onPressed: () {
                _speakingController.listen();
              },
            ),
          )
      ),
    );
  }
}
