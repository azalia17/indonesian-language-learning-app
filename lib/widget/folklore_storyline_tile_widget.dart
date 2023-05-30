// import 'package:flutter/material.dart';
//
// import '../model/folklore_model.dart';
//
// class FolkloreStoryLineTileWidget extends StatefulWidget {
//   final StoryLine lines;
//
//
//
//   const FolkloreStoryLineTileWidget({Key? key, required this.lines}) : super(key: key);
//
//   @override
//   State<FolkloreStoryLineTileWidget> createState() => _FolkloreStoryLineTileWidgetState();
// }
//
// class _FolkloreStoryLineTileWidgetState extends State<FolkloreStoryLineTileWidget> {
//
//   @override
//   Widget build(BuildContext context) {
//     // bool isTapped = false;
//     // bool isFinalTapped = onTap.
//
//     String stories = widget.lines.javanese;
//     bool charactersTapped = false;
//     void changeToCharacters(){
//       charactersTapped = !charactersTapped;
//       setState(() {
//         if(charactersTapped) {
//           stories = widget.lines.characters;
//         }
//       });
//
//
//       // return charactersTapped;
//     }
//
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
//               stories,
//               textAlign: TextAlign.justify,
//               style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 18,
//                   color: Colors.white
//               ),
//             ),
//           ),
//
//           // Expanded(
//           //   child: widget.isActive ? Text(
//           //     widget.lines.javanese,
//           //     // onTap.isTapped == false ? widget.lines.javanese : widget.lines.indonesian,
//           //     // isActive == false ? lines.javanese : lines.indonesian,
//           //     textAlign: TextAlign.justify,
//           //     style: TextStyle(
//           //       fontFamily: 'Poppins',
//           //       fontSize: 12,
//           //       color: Colors.white
//           //     ),
//           //   ) :
//           //   Text(
//           //     widget.lines.indonesian,
//           //     // onTap.isTapped == false ? widget.lines.javanese : widget.lines.indonesian,
//           //     // isActive == false ? lines.javanese : lines.indonesian,
//           //     textAlign: TextAlign.justify,
//           //     style: TextStyle(
//           //         fontFamily: 'Poppins',
//           //         fontSize: 12,
//           //         color: Colors.white
//           //     ),
//           //   ),
//           // ),
//           Container(
//             width: 40,
//             padding: EdgeInsets.only(left: 10),
//             // color: Colors.blueAccent[200],
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 InkWell(
//                   onTap: changeToCharacters,
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
//                           fontFamily: 'Javanese',
//                           fontSize: 16,
//                           color: Colors.white54
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: widget.onTap,
//                   // onTap: () {
//                   //   print('im tapped');
//                   //
//                   //   isTapped = !isTapped;
//                   //   print(!isTapped);
//                   // },
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
//
//
//
// //
// // class FolkloreStoryLineTileWidget extends StatefulWidget {
// //   final StoryLine lines;
// //   const FolkloreStoryLineTileWidget({Key? key, required this.lines}) : super(key: key);
// //
// //   @override
// //   State<FolkloreStoryLineTileWidget> createState() => _FolkloreStoryLineTileWidgetState();
// // }
// //
// // class _FolkloreStoryLineTileWidgetState extends State<FolkloreStoryLineTileWidget> {
// //   String line = lines.javanese;
// //   @override
// //   Widget build(BuildContext context) {
// //
// //
// //     return Container(
// //       height: 120,
// //       padding: EdgeInsets.all(16),
// //       margin: EdgeInsets.only(top: 16),
// //       width: MediaQuery.of(context).size.width,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(15.0),
// //         color: Colors.black12,
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Expanded(
// //             child: Text(
// //               line,
// //               textAlign: TextAlign.justify,
// //               style: TextStyle(
// //                   fontFamily: 'Poppins',
// //                   fontSize: 12,
// //                   color: Colors.white
// //               ),
// //             ),
// //           ),
// //           Container(
// //             width: 40,
// //             padding: EdgeInsets.only(left: 10),
// //             // color: Colors.blueAccent[200],
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 Container(
// //                   width: 30,
// //                   height: 30,
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(5),
// //                     color: Colors.white12,
// //                   ),
// //                   child: Text(
// //                     'ꦲ',
// //                     textAlign: TextAlign.center,
// //                     style: TextStyle(
// //                         fontFamily: 'Javanese',
// //                         fontSize: 16,
// //                         color: Colors.white54
// //                     ),
// //                   ),
// //                 ),
// //                 InkWell(
// //                   onTap: _changeText(),
// //                   child: Container(
// //                     padding: EdgeInsets.all(5),
// //                     width: 30,
// //                     height: 30,
// //                     decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(5),
// //                       color: Colors.white12,
// //                     ),
// //                     child: Icon( Icons.translate, color: Colors.white54, size: 16.0,),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// //   _changeText() {
// //     setState(() {
// //       if()
// //     });
// //   }
// // }
// //
// //
