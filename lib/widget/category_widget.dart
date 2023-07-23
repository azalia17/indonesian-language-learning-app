// import 'dart:html';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:language_app/constant/colors.dart';
import 'package:language_app/screen/speaking_screen.dart';
import 'package:language_app/screen/vocabulary_screen.dart';

import '../screen/under_construction_screen.dart';
import '../screen/vocabulary_screen.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double halfScreenWidth = screenWidth / 2;
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  /*** KOSA KATA Button ***/
                  AnimatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => VocabularyScreen()));
                    },
                    width: halfScreenWidth - 25,
                    height: 180,
                    color: kCategory1,
                    shadowDegree: ShadowDegree.light,
                    enabled: true,
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              width: 95,
                              child: Image.asset('assets/images/cuttedA.png',)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, bottom: 10),
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/images/homeCategory/categoryVocab.svg'),
                                Text(
                                  'Kosa Kata',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  /*** BERBICARA Button ***/
                  AnimatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => SpeakingScreen(title: 'Berbicara')));
                    },
                    width: halfScreenWidth - 25,
                    height: 160,
                    color: kCategory3,
                    shadowDegree: ShadowDegree.light,
                    enabled: true,
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              width: 85,
                              child: Image.asset('assets/images/cuttedMicrophone.png',)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, bottom: 10),
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/images/homeCategory/categorySpeaking.svg'),
                                Text(
                                  'Berbicara',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  /*** TATA BAHASA Button ***/
                  AnimatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => UnderConstructionScreen(title: 'Tata Bahasa')));
                    },
                    width: halfScreenWidth - 25,
                    height: 150,
                    color: kCategory2,
                    shadowDegree: ShadowDegree.light,
                    enabled: true,
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              width: 80,
                              child: Image.asset('assets/images/cuttedA.png',)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, bottom: 10),
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/images/homeCategory/categoryGrammar.svg'),
                                Text(
                                  'Tata Bahasa',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  /*** MENDENGARKAN Button ***/
                  AnimatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => UnderConstructionScreen(title: 'Mendengarkan',)));
                    },
                    width: halfScreenWidth - 25,
                    height: 190,
                    color: kCategory4,
                    shadowDegree: ShadowDegree.light,
                    enabled: true,
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              width: 110,
                              child: Image.asset('assets/images/cuttedHeadphone.png',)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, bottom: 10),
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/images/homeCategory/categoryListening.svg'),
                                Text(
                                  'Mendengarkan',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          /*** QUESTION MARK BUTTON ***/
          AnimatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => UnderConstructionScreen(title: 'Uji Dirimu!')));
            },
            width: screenWidth - 40,
            height: 120,
            color: kCategory5,
            shadowDegree: ShadowDegree.light,
            enabled: true,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      right: 15,
                      width: 80,
                      child: Image.asset('assets/images/cuttedQuestionMark.png',)
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, bottom: 10),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/images/homeCategory/categoryTest.svg'),
                        Text(
                          'Uji Dirimu!',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
