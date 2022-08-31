import 'package:flutter/material.dart';
import 'package:language_app/constant/colors.dart';
import '../model/topic_vocab_model.dart';

class OptionWidget extends StatefulWidget {
  final List<VocabOptionQuiz> options;
  const OptionWidget({Key? key, required this.options}) : super(key: key);

  @override
  State<OptionWidget> createState() => _OptionWidgetState(options);
}

class _OptionWidgetState extends State<OptionWidget> {

  List<VocabOptionQuiz> options;

  _OptionWidgetState(this.options);
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        VocabOptionQuiz option = options[index];
        return  SizedBox(
          height: 75,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: (groupValue == option.index) ? kSelectedFont : Colors.white,
              animationDuration: Duration(seconds: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              side: BorderSide(width: 2, color: (groupValue == option.index) ? kSelectedFont : Colors.black38),
            ),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                option.name,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  color: (groupValue == option.index) ? Colors.white : kProfileFont,
                ),
              ),
            ),
            onPressed:() {
              setState(() {
                groupValue = option.index;
              });
            },
          ),
        );
      },
      itemCount: options.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),
    );
  }
}
