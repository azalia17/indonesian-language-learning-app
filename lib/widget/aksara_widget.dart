import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_app/model/aksara_model.dart';
import 'package:language_app/screen/characters_detail_screen.dart';
import 'package:language_app/widget/title_widget.dart';

class AksaraWidget extends StatelessWidget {
  final List<AksaraData> aksara;
  const AksaraWidget({Key? key, required this.aksara}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
            children: [
              SizedBox(height: 20,),
              TitleWidget(title: 'Aksara Dasar'),
              SizedBox(height: 12,),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 5,
                crossAxisSpacing: 4,
                mainAxisSpacing: 8,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: aksara.map((characters) {
                  return InkWell(
                    onTap: () {
                      Get.to(CharactersDetailScreen(aksaraData: characters,));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // SizedBox(height: 4,),
                          Text(
                            characters.javanese,
                            style: TextStyle(
                              fontFamily: 'Javanese',
                              fontSize: 36,
                              height: 1.3
                            ),
                          ),
                          // SizedBox(height: 2,),
                          Text(
                            characters.indonesian,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                height: .3,
                              color: Colors.black38
                            ),
                          ),
                          // SizedBox(height: 4,)
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ]
        );
      }
    );
  }
}
