// @dart=2.9

import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeakingController extends GetxController {
  //It makes questionNumber an observable variable. Which means that whenever the value of that variable changes,
  // that change wil be automatically reflected on all places where it's being used. It's like listening to a stream.
  var isListening = false.obs;
  var speechText = 'Tekan mic dan mulai berbicara'.obs;
  SpeechToText speechToText;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    speechToText = SpeechToText();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void listen() async {
    if (!isListening.value)  {
      bool available = await speechToText.initialize(
        onStatus: (val) {},
        onError: (val) {},
      );
      if (available) {
        isListening.value = true;
        speechToText.listen(
          localeId: 'jv',
          onResult: (val) {
            speechText.value = val.recognizedWords;
          }
        );
      }
    } else {
      isListening.value = false;
      speechToText.stop();
      if (speechText.value != 'Tekan mic dan mulai berbicara')
        speechText.value = speechText.value;
      else
        speechText.value = 'Tekan mic dan mulai berbicara';
    }
  }
}