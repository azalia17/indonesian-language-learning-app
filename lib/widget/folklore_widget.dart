//
// import 'package:animated_button/animated_button.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:language_app/model/folklore_model.dart';
// import 'package:language_app/screen/characters_detail_screen.dart';
// import 'dart:async';
// import 'package:http/http.dart' as http;
//
// import '../constant/colors.dart';
// import '../screen/folklore_detail_screen.dart';
//
// class FolkloreWidget extends StatelessWidget {
//   // final FolkloreData story;
//   final List list;
//
//
//   const FolkloreWidget({Key ?key, required this.list}) : super(key: key);
//
//   // Future<List> getData() async {
//   //
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     return Padding(
//       padding: EdgeInsets.only(bottom: 10),
//       child: AnimatedButton(
//         onPressed: () {
//           Get.to(FolkloreDetailsScreen(story: story,));
//           // Navigator.of(context)
//           //     .push(MaterialPageRoute(builder: (context) => AnotherPage()));
//         },
//         width: screenWidth - 40,
//         height: 130,
//         color: story.bgColor,
//         shadowDegree: ShadowDegree.light,
//         enabled: true,
//         child: Container(
//           child: Stack(
//             children: [
//               Positioned(
//                   top: 0,
//                   right: 8,
//                   width: 100,
//                   child: Image.asset(story.image,)
//               ),
//               Container(
//                 padding: EdgeInsets.only(left: 15, bottom: 10),
//                 width: double.infinity,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       story.title,
//                       style: TextStyle(
//                         fontSize: 28.0,
//                         fontFamily: 'Poppins',
//                         color: Colors.white.withOpacity(0.7),
//                         fontWeight: FontWeight.bold,
//                         height: 1,
//                         letterSpacing: 2.3,
//                       ),
//                     ),
//                     Text(
//                       story.characterTitle,
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         fontFamily: 'Javanese',
//                         color: Colors.white.withOpacity(0.9),
//                         // fontWeight: FontWeight.bold,
//                         height: 1.3,
//                         // letterSpacing: 2.3,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
