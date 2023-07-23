import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:language_app/extentions.dart';
import 'package:language_app/model/folklore_model.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

import '../constant/colors.dart';
import '../widget/screen_title_widget.dart';
import 'dart:math'; // it will allows us to get the pi constant


class FolkloreDetailsScreen extends StatefulWidget {
  // final FolkloreData story;
  final String id;
  final String title, bgStoryColor;

  const FolkloreDetailsScreen({Key? key, required this.id, required this.title, required this.bgStoryColor}) : super(key: key);


  @override
  State<FolkloreDetailsScreen> createState() => _FolkloreDetailsScreenState();
}

class _FolkloreDetailsScreenState extends State<FolkloreDetailsScreen> {

  Future<List> getDetailData() async {
    final Map<String, String> _queryParameters = <String, String>{
      'id': '${widget.id}',
    };
    var url = Uri.https("azaliacollege.000webhostapp.com", "getFolkloreDetail.php", _queryParameters);

    final response = await http.get(url);
    print(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    bool isTapped = false;

    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: widget.title.replaceAll('\\n',  ''), titleColor: Colors.white,),
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: widget.bgStoryColor.toString().toColor(),
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 75,
        // shadowColor: Colors.transparent,
        // toolbarOpacity: 0.0,
      ),
      body: Container(
        color: widget.bgStoryColor.toString().toColor(),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                padding: EdgeInsets.only(bottom: 15.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.network('https://azaliacollege.000webhostapp.com/assets/folklore/startStory.svg', alignment: AlignmentDirectional.topStart,),
                    FutureBuilder<List>(
                      future: getDetailData(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) print(snapshot.error);
                        else print(snapshot.data);

                        return snapshot.hasData ? StoryList(list: snapshot.data,) : Center(child: CircularProgressIndicator(),);
                      },
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                        margin: EdgeInsets.only(top: 16, bottom: 12),
                        height: 40,
                        child: SvgPicture.network('https://azaliacollege.000webhostapp.com/assets/folklore/endStory.svg', alignment: AlignmentDirectional.bottomEnd,)
                    ),
                  ],
                )
            ),

          ),
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  const ItemList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: list.length * 136.0,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          // StoryLine storiesLines = widget.story.lines[index];
          // return StoryLineTile(lines: storiesLines,);
          return Container(
            height: 120,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(top: 16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.black12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    list[index]['javanese'],
                    // lines.javanese,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Colors.white
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  padding: EdgeInsets.only(left: 10),
                  // color: Colors.blueAccent[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white12,
                          ),
                          child: Text(
                            'ꦲ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Javanese',
                                fontSize: 16,
                                color: Colors.white54
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        // onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(5),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white12,
                          ),
                          child: Icon( Icons.translate, color: Colors.white54, size: 16.0,),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}

//
// class StoryLineTile extends StatelessWidget {
//   final StoryLine lines;
//
//   const StoryLineTile({Key? key, required this.lines}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 120,
//       padding: EdgeInsets.all(16),
//       margin: EdgeInsets.only(top: 16),
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15.0),
//         color: Colors.black12,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Text(
//               lines.javanese,
//               textAlign: TextAlign.justify,
//               style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 12,
//                   color: Colors.white
//               ),
//             ),
//           ),
//           Container(
//             width: 40,
//             padding: EdgeInsets.only(left: 10),
//             // color: Colors.blueAccent[200],
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 GestureDetector(
//                   onTap: () {},
//                   child: Container(
//                     width: 30,
//                     height: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Colors.white12,
//                     ),
//                     child: Text(
//                       'ꦲ',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontFamily: 'Javanese',
//                         fontSize: 16,
//                         color: Colors.white54
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   // onTap: () {},
//                   child: Container(
//                     padding: EdgeInsets.all(5),
//                     width: 30,
//                     height: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Colors.white12,
//                     ),
//                     child: Icon( Icons.translate, color: Colors.white54, size: 16.0,),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


class StoryList extends StatefulWidget {
  final List? list;

  const StoryList({Key? key, required this.list}) : super(key: key);

  @override
  State<StoryList> createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {
  //declare the isBack bool
  bool isBack = true;
  double angle = 0;

  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.list!.length * 136.0,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          // StoryLine storiesLines = widget.story.lines[index];
          // return StoryLineTile(lines: storiesLines,);
          return GestureDetector(
            onTap: _flip,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: angle),
              duration: Duration(seconds: 1),
              builder: (BuildContext context, double val, __) {
                //here we will change the isBack val so we can change the content of the card
                if (val >= (pi / 2)) {
                  isBack = false;
                } else {
                  isBack = true;
                }
                return (Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(val),
                    child: Container(
                        width: 309,
                        height: 120,
                        child: isBack ? Container(
                          height: 120,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(top: 16),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.black12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.list?[index]['javanese'],
                                  // lines.javanese,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                padding: EdgeInsets.only(left: 10),
                                // color: Colors.blueAccent[200],
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.white12,
                                        ),
                                        child: Text(
                                          'ꦲ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Javanese',
                                              fontSize: 16,
                                              color: Colors.white54
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      // onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.white12,
                                        ),
                                        child: Icon( Icons.translate, color: Colors.white54, size: 16.0,),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ) : Transform(alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..rotateY(
                                  pi), // it will flip horizontally the container
                            child: Container(
                              height: 120,
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.only(top: 16),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.black12,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      widget.list?[index]['characters'],
                                      // lines.javanese,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    padding: EdgeInsets.only(left: 10),
                                    // color: Colors.blueAccent[200],
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.white12,
                                            ),
                                            child: Text(
                                              'ꦲ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'Javanese',
                                                  fontSize: 16,
                                                  color: Colors.white54
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          // onTap: () {},
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.white12,
                                            ),
                                            child: Icon( Icons.translate, color: Colors.white54, size: 16.0,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                ) ));
              },
            )
          );
        },
        itemCount: widget.list?.length,
      ),
    );
  }
}
