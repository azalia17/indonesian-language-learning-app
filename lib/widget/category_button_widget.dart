import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:language_app/constant/colors.dart';

class CategoryButtonWidget extends StatelessWidget {
  const CategoryButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double halfScreenWidth = screenWidth / 2;
    return AnimatedButton(
      onPressed: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => AnotherPage()));
      },
      width: halfScreenWidth - 25,
      height: 150,
      color: kCategory3,
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
                  Image.asset('assets/images/vocab.png'),
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
    );
  }
}
