import 'package:flutter/material.dart';

class TopicVocab {
  String name;
  IconData icon;
  int progress;
  bool availability;
  List<WordTopicVocab> words;
  List<VocabQuiz> quizzes;

  TopicVocab({
    required this.name,
    required this.icon,
    required this.progress,
    required this.availability,
    required this.words,
    required this.quizzes,
  });
}

class WordTopicVocab {
  String indonesian;
  String image;
  String translation;

  WordTopicVocab({required this.indonesian,
    required this.image,
    required this.translation});
}

class VocabQuiz {
  String name;
  String image;
  // List<String> option;
  List<VocabOptionQuiz> option;

  VocabQuiz({
    required this.name,
    required this.image,
    required this.option,
  });
}

class VocabOptionQuiz {
  String name;
  bool isCorrect;
  int index;

  VocabOptionQuiz({
    required this.name,
    required this.isCorrect,
    required this.index
  });
}

/*** Topic 1 ***/
var topic1VocabList = [
  TopicVocab(
      name: 'Anggota Keluarga',
      icon: Icons.family_restroom,
      progress: 70,
      availability: true,
      words: familyWord,
      quizzes: vocabQuiz1),

  TopicVocab(
      name: 'Makanan',
      icon: Icons.fastfood,
      progress: 0,
      availability: false,
      words: familyWord,
      quizzes: vocabQuiz1),
];

var familyWord = [
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabFather.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabMother.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabGrandfather.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabGrandmother.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabChildren.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabBrother.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabSister.png',
      translation: 'Rama'),
];

var vocabQuiz1 = [
  VocabQuiz(
      name: 'Ayah',
      image: 'assets/images/familyVocabFather.png',
      // option: ["Rama", "Budhe", "adhek", "Kangmas", "Mbak Ayu"]
      option:  vocabQuizOption1,
  )
];

var vocabQuizOption1 = [
  VocabOptionQuiz(name: 'Rama', isCorrect: true, index: 1),
  VocabOptionQuiz(name: 'Ibu', isCorrect: false, index: 2),
  VocabOptionQuiz(name: 'Uti', isCorrect: false, index: 3),
  VocabOptionQuiz(name: 'Kakung', isCorrect: false, index: 4),
  VocabOptionQuiz(name: 'Adek', isCorrect: false, index: 5),
];

/*** Topic 2 ***/
var topic2VocabList = [
  TopicVocab(
      name: 'Anggota Keluarga',
      icon: Icons.family_restroom,
      progress: 0,
      availability: false,
      words: familyWord,
      quizzes: vocabQuiz1),
];
