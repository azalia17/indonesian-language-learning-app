// import 'package:animated_button/animated_button.dart';
// import 'package:flutter/material.dart';
// import 'package:language_app/constant/colors.dart';
// import 'package:language_app/model/topic_vocab_model.dart';
// import 'package:language_app/screen/vocabulary_detail_screen.dart';
// import 'package:percent_indicator/percent_indicator.dart';
//
// class TopicWidget extends StatelessWidget {
//   final TopicVocab topic;
//
//   const TopicWidget({Key? key, required this.topic}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     if (topic.availability == true) {
//       return UnlockedTopic(topic: topic,);
//     } else {
//       return LockedTopic(topic: topic,);
//     }
//   }
// }
//
// class UnlockedTopic extends StatelessWidget {
//   final TopicVocab topic;
//
//   const UnlockedTopic({Key? key, required this.topic}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Container(
//       width: screenWidth,
//       padding: EdgeInsets.symmetric(vertical: 5),
//       // child: Expanded(
//       child: AnimatedButton(
//         onPressed: () {
//           Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) => VocabularyDetailScreen(vocab: topic,)));
//         },
//         width: screenWidth - 40,
//         height: 62,
//         color: kBgButtonTopic1,
//         shadowDegree: ShadowDegree.dark,
//         enabled: true,
//         child: Container(
//           padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(
//                 topic.icon,
//                 color: kPercentageTopic1,
//                 size: 23,
//                 semanticLabel: 'Family',
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Text(
//                       topic.name,
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.black87,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 3),
//                     child: LinearPercentIndicator(
//                       width: MediaQuery.of(context).size.width - 150,
//                       animation: false,
//                       lineHeight: 5.0,
//                       animationDuration: 2000,
//                       percent: topic.progress / 100,
//                       barRadius: Radius.circular(5.0),
//                       progressColor: kPercentageTopic1,
//                       backgroundColor: kFullPercentageTopic1,
//                       trailing: Text(
//                         topic.progress.toString(),
//                         style: TextStyle(
//                           fontSize: 10,
//                           fontFamily: 'Poppins',
//                           color: kPercentageTopic1,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Icon(
//                 Icons.play_arrow,
//                 color: Colors.black87,
//                 size: 15,
//                 semanticLabel: 'Arrow',
//               ),
//             ],
//           ),
//         ),
//       ),
//       // ),
//     );
//   }
// }
//
// class LockedTopic extends StatelessWidget {
//   final TopicVocab topic;
//
//   const LockedTopic({Key? key, required this.topic}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 5),
//       width: screenWidth,
//       child: OutlinedButton(
//         style: OutlinedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           side: BorderSide(width: 1.5, color: Colors.black12),
//         ),
//         onPressed: null,
//         child: Container(
//           padding: EdgeInsets.fromLTRB(0, 10, 0, 12),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Icon(topic.icon,
//                 color: Colors.black26,
//                 size: 23,
//                 semanticLabel: topic.name,),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Text(
//                       topic.name,
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.black26,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: 'Montserrat',
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 3),
//                     child: LinearPercentIndicator(
//                       width: MediaQuery.of(context).size.width - 150,
//                       animation: false,
//                       lineHeight: 5.0,
//                       animationDuration: 0,
//                       percent: 0.0,
//                       barRadius: Radius.circular(5.0),
//                       progressColor: kPercentageTopic1,
//                       backgroundColor: Colors.black12,
//                       trailing: const Text(
//                         "0%",
//                         style: TextStyle(
//                           fontSize: 10,
//                           fontFamily: 'Poppins',
//                           color: Colors.black26,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Icon(
//                 Icons.lock,
//                 color: Colors.black26,
//                 size: 15,
//                 semanticLabel: 'Lock',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
