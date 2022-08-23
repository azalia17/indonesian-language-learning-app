import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';
import 'package:language_app/screen/vocabulary_screen.dart';

import '../screen/vocabulary_screen.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double halfScreenWidth = screenWidth / 2;
    return Container(
      // padding: EdgeInsets.fromLTRB(20, 15, 5, 0),
      // alignment: ,
      // width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                                Image.asset('assets/images/categoryVocab.png'),
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
                  AnimatedButton(
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => AnotherPage()));
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
                                Image.asset('assets/images/categorySpeaking.png'),
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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedButton(
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => AnotherPage()));
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
                                Image.asset('assets/images/categoryGrammar.png'),
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
                  AnimatedButton(
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => AnotherPage()));
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
                                Image.asset('assets/images/categoryListening.png'),
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
          /*** QUESTION MARK BUTTON ***/
          SizedBox(
            height: 10,
          ),
          AnimatedButton(
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => AnotherPage()));
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
                        Image.asset('assets/images/categoryTest.png'),
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
