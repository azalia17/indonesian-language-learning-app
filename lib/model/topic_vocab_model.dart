import 'package:flutter/material.dart';

class TopicVocab {
  String name;
  IconData icon;
  int progress;
  bool availability;
  List<WordTopicVocab> words;

  TopicVocab({
    required this.name,
    required this.icon,
    required this.progress,
    required this.availability,
    required this.words,
  });
}

class WordTopicVocab {
  String indonesian;
  String image;
  String translation;

  WordTopicVocab(
      {required this.indonesian,
      required this.image,
      required this.translation});
}

var topic1VocabList = [
  TopicVocab(
      name: 'Anggota Keluarga',
      icon: Icons.family_restroom,
      progress: 70,
      availability: true,
      words: familyWord),

  TopicVocab(
      name: 'Makanan',
      icon: Icons.fastfood,
      progress: 0,
      availability: false,
      words: familyWord),
];

var familyWord = [
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabFather.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabFather.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabFather.png',
      translation: 'Rama'),
  WordTopicVocab(
      indonesian: 'Ayah',
      image: 'assets/images/familyVocabFather.png',
      translation: 'Rama'),
];


var topic2VocabList = [
  TopicVocab(
      name: 'Anggota Keluarga',
      icon: Icons.family_restroom,
      progress: 0,
      availability: false,
      words: familyWord),

];
