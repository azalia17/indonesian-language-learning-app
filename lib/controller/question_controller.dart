import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:language_app/model/quiz_model.dart';
import 'package:language_app/screen/score_screen.dart';

class QuestionController extends GetxController with SingleGetTickerProviderMixin{
  late AnimationController _animationController;
  late Animation _animation;

  // so that we can access our animation outside
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;
  
  final List<Question> _question = vocab_family_question
      .map((question) => Question(
        question['id'],
        question['answer_option'],
        question['question'],
        question['image'],
        question['options'])
      ).toList();

  List<Question> get questions => this._question;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAnswer = 0;
  int get correctAnswer => this._correctAnswer;

  late int _selectedAnswer=0;
  int get selectedAnswer => this._selectedAnswer;

  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  late int _numOfCorrectAnswer = 0;
  int get numOfCorrectAnswer => this._numOfCorrectAnswer;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    // Our animation duration is 10 seconds
    _animationController = AnimationController(duration: Duration(seconds: 10), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
    ..addListener(() {
      // update like setState
      update();
    });

    // start our animation
    // once 60seconds passed, go to the next question
    _animationController.forward().whenComplete(nextQuestion);

    _pageController = PageController();

    super.onInit();
  }

  // called just before the controller is deleted from memory
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAnswer(Question question, int selectedIndex) {
    // once user press any option the it will run
    _isAnswered = true;
    _correctAnswer = question.answer;
    _selectedAnswer = selectedIndex;

    if (_correctAnswer == _selectedAnswer) _numOfCorrectAnswer++;

    // it will stop the counter
    _animationController.stop();
    update();

    //Once user select an answer after 3seconds it will go to the next question
    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _question.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to navigate another page
      Get.off(() => ScoreScreen());
    }
  }

  void updateTheQuestionNum(int index) {
    _questionNumber.value = index + 1;
  }

  void startQuiz() {
    _questionNumber.value = 1;
    _isAnswered = false;
    _numOfCorrectAnswer = 0;

    onInit();
  }
}