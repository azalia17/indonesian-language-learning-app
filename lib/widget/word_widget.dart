import 'package:flutter/material.dart';

class WordWidget extends StatelessWidget {
  const WordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 80,
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
            'assets/images/man.png',
            height: 50,
          ),
          SizedBox(width: 10.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ayah',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  color: Colors.black38,
                  height: 1.7,
                ),
              ),
              Text(
                'Mbah Putri',
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
    );
  }
}

