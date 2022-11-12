import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';

class FolkloreData {
  String title;
  String characterTitle;
  String image;
  Color bgColor;
  // List<StoryLine> lines;

  FolkloreData({
    required this.title,
    required this.characterTitle,
    required this.image,
    required this.bgColor,
    // required this.lines,
  });
}

class StoryLine {
  String javanese;
  String indonesian;
  int index;

  StoryLine({
    required this.javanese,
    required this.index,
    required this.indonesian});
}

var folkloresData = [
  FolkloreData(
    title: 'Timun \nMas',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/timunMas.png',
    bgColor: kCategory4,
    /*lines: [
      StoryLine(javanese: 'Biyen, ono wanito tuwa karo putrone. Bocah lanang elek lan ugo ringkes. Mulo ojo gumun, yen bocah kasebut asring diarani Joko Kendil dening masarakat sacedhake.', index: 1, indonesian: ' '),
    ]*/
  ),
  FolkloreData(
    title: 'Joko \nKendil',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/jokoKendil.png',
    bgColor: kCategory5,
  ),
  FolkloreData(
    title: 'Roro \nJonggrang',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/roroJonggrang.png',
    bgColor: kCategory1,
  ),
  FolkloreData(
    title: 'Nyi \nRoro Kidul',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/nyiRoroKidul.png',
    bgColor: kCategory4,
  ),
  FolkloreData(
    title: 'Jaka Tarub \ndan 7 Bidadari',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/jakaTarub.png',
    bgColor: kCategory3,
  ),
  FolkloreData(
    title: 'Rawa \nPening',
    characterTitle: 'ꦱꦌꦗꦱꦄꦲꦉ',
    image: 'assets/images/folklore/rawaPening.png',
    bgColor: kCategory4,
  ),

];
