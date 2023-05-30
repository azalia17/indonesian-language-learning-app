import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';

class FolkloreData {
  String title;
  String characterTitle;
  String image;
  Color bgColor;
  Color bgStoryColor;
  List<StoryLine> lines;

  FolkloreData({
    required this.title,
    required this.characterTitle,
    required this.image,
    required this.bgColor,
    required this.bgStoryColor,
    required this.lines,
  });
}

class StoryLine {
  String javanese;
  String indonesian;
  String characters;
  int index;

  StoryLine({
    required this.javanese,
    required this.index,
    required this.indonesian,
    required this.characters});
}

var folkloresData = [
  FolkloreData(
    title: 'Timun \nMas',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/timunMas.png',
    bgColor: kCategory4,
    bgStoryColor: kCategoryBackground4,
    lines: [
      StoryLine(javanese: '1 Biyen, ono wanito tuwa karo putrone. Bocah lanang elek lan ugo ringkes. Mulo ojo gumun, yen bocah kasebut asring diarani Joko Kendil dening masarakat sacedhake.', index: 1, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '2 Biyen, ono wanito tuwa karo putrone. Bocah lanang elek lan ugo ringkes. Mulo ojo gumun, yen bocah kasebut asring diarani Joko Kendil dening masarakat sacedhake.', index: 2, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '3 Biyen, ono wanito tuwa karo putrone. Bocah lanang elek lan ugo ringkes. Mulo ojo gumun, yen bocah kasebut asring diarani Joko Kendil dening masarakat sacedhake.', index: 3, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
    ]
  ),
  FolkloreData(
    title: 'Joko \nKendil',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/jokoKendil.png',
    bgColor: kCategory5,
    bgStoryColor: kCategoryBackground5,
    lines: [
      StoryLine(javanese: '1 ', index: 1, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '2 ', index: 2, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '3 ', index: 3, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
    ]
  ),
  FolkloreData(
    title: 'Roro \nJonggrang',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/roroJonggrang.png',
    bgColor: kCategory1,
    bgStoryColor: kCategoryBackground1,
    lines: [
      StoryLine(javanese: '1 ', index: 1, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '2 ', index: 2, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '3 ', index: 3, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
    ]
  ),
  FolkloreData(
    title: 'Nyi \nRoro Kidul',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/nyiRoroKidul.png',
    bgColor: kCategory4,
    bgStoryColor: kCategoryBackground4,
    lines: [
      StoryLine(javanese: '1 ', index: 1, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '2 ', index: 2, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '3 ', index: 3, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
    ]
  ),
  FolkloreData(
    title: 'Jaka Tarub \ndan 7 Bidadari',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/jakaTarub.png',
    bgColor: kCategory3,
    bgStoryColor: kCategoryBackground3,
    lines: [
      StoryLine(javanese: '1 ', index: 1, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '2 ', index: 2, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '3 ', index: 3, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
    ]
  ),
  FolkloreData(
    title: 'Rawa \nPening',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/rawaPening.png',
    bgColor: kCategory4,
    bgStoryColor: kCategoryBackground4,
    lines: [
      StoryLine(javanese: '1 ', index: 1, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '2 ', index: 2, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '3 ', index: 3, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '1 ', index: 1, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '2 ', index: 2, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '3 ', index: 3, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '1 ', index: 1, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '2 ', index: 2, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
      StoryLine(javanese: '3 ', index: 3, indonesian: ' ', characters: 'ꦱꦢꦱꦄ'),
    ]
  ),
];
