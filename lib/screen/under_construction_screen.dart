import 'package:flutter/material.dart';
import 'package:language_app/widget/screen_title_widget.dart';

class UnderConstructionScreen extends StatelessWidget {
  final String title;
  const UnderConstructionScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: title,),
        iconTheme: IconThemeData(
          color: Colors.black45,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 75,
        shadowColor: Colors.transparent,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.smart_toy,
                  color: Colors.black26,
                  size: 200,
                ),
                Text(
                  'I\'m Sorry,',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 40,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                  ),
                ),Text(
                 'The \"' + title + '\" screen is under construction',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Colors.black45
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


