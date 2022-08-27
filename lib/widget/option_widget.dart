import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';

class OptionWidget extends StatefulWidget {
  const OptionWidget({Key? key}) : super(key: key);

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(


          // enabledMouseCursor: false,
          backgroundColor: isTapped ? kSelectedFont : Colors.white,
          animationDuration: Duration(seconds: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          side: BorderSide(width: 2, color: isTapped ? kSelectedFont : Colors.black38),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Ayah',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              color: isTapped ? Colors.white : kProfileFont,
            ),
          ),
        ),
        onPressed:() {
          setState(() {
            isTapped = !isTapped;
          });
        },

      ),
    );
  }
}
