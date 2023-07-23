
import 'dart:convert';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_app/model/folklore_model.dart';
import 'package:language_app/widget/folklore_widget.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../extentions.dart';

import '../constant/colors.dart';
import '../widget/screen_title_widget.dart';
import 'folklore_detail_screen.dart';

class FolkloreScreen extends StatelessWidget {
  const FolkloreScreen({Key? key}) : super(key: key);

  Future<List> getData() async {
    var url = Uri.https("azaliacollege.000webhostapp.com", "getFolkloreData.php");
    final response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: 'Cerita Rakyat',),

        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 72,
        shadowColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.only(bottom: 15.0),
            child: FutureBuilder<List>(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasError) print(snapshot.error);

                return snapshot.hasData ? itemList(list: snapshot.data,) : Center(child: CircularProgressIndicator(),);
              },
            ),
            // child: SizedBox(
            //   height: folkloresData.length * 140,
            //   child: ListView.builder(
            //     padding: EdgeInsets.symmetric(vertical: 5),
            //     physics: NeverScrollableScrollPhysics(),
            //     itemBuilder: (context, index) {
            //       FolkloreData storiesList = folkloresData[index];
            //       return FolkloreWidget(story: storiesList,);
            //     },
            //     itemCount: folkloresData.length,
            //   ),
            // )
          ),
        // child: Text(
        //   'Folklore Screen',
        //   style: TextStyle(
        //       fontFamily: "poppins",
        //       fontWeight: FontWeight.bold,
        //       fontSize: 20,
        //       color: kCategoryBackground1
        //   ),
        // ),
        ),
      ),
    );
  }
}


class itemList extends StatelessWidget {
  final List? list;
  const itemList({Key? key, required this.list}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        child: SizedBox(
          height: list!.length * 140.0,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 5),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              // return Text(list[index]['title'].toString());
              // FolkloreData storiesList = folkloresData[index];
              // return FolkloreWidget(story: storiesList,);
              return Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: AnimatedButton(
                  onPressed: () {
                    Get.to(FolkloreDetailsScreen(id: list?[index]['id'], title: list?[index]['title'], bgStoryColor: list?[index]['bg_story_color'],));
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => AnotherPage()));
                  },
                  width: screenWidth - 40,
                  height: 130,
                  color: list?[index]['bg_color'].toString().toColor(),
                  shadowDegree: ShadowDegree.light,
                  // color: kCategoryBackground3,
                  enabled: true,
                  child: Container(
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            right: 8,
                            width: 100,
                            child: Image.network(list?[index]['image'],)
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, bottom: 10),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list![index]['title'].toString().replaceAll('\\n', '\n'),
                                style: TextStyle(
                                  fontSize: 28.0,
                                  fontFamily: 'Poppins',
                                  color: Colors.white.withOpacity(0.7),
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  letterSpacing: 2.3,
                                ),
                              ),
                              Text(
                                list?[index]['character_title'],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Javanese',
                                  color: Colors.white.withOpacity(0.9),
                                  // fontWeight: FontWeight.bold,
                                  height: 1.3,
                                  // letterSpacing: 2.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: list?.length,
          ),
        )
    );
  }
}
