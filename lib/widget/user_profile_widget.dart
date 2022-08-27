import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
              gradient: LinearGradient(
                  colors: [kProfileGradientYellow1, kProfileGradientYellow2, kProfileGradientYellow3, kProfileGradientYellow4],
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0, -1.0)
              ),
            ),
            child: Center(
              child: Text(
                  'A',
                style: TextStyle(
                  color: kProfileFont,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'
                ),
              ),
            )
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sugeng Rawuh, Azalia!',
                style: TextStyle(
                    color: kProfileFont,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'
                ),
              ),
              Text(
                'Piye kabare?',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontFamily: 'Poppins'
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

