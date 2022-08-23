import 'package:flutter/material.dart';
import 'package:language_app/model/topic_vocab_model.dart';

class WordWidget extends StatelessWidget {
  final WordTopicVocab word;

  const WordWidget({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        height: 75,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          border: Border.all(
              color: Colors.black38,
              width: 2.0,
              style: BorderStyle.solid
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              word.image,
              height: 50,
            ),
            SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  word.indonesian,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Colors.black38,
                    height: 1.7,
                  ),
                ),
                Text(
                  word.translation,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

