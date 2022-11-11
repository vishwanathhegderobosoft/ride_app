// import 'dart:io';
//
// import '../test.dart';
// import 'package:flutter/material.dart';
//
// class ChangeDp extends StatefulWidget {
//   File image = File(Camera.storeImage!.path);
//
//   @override
//   State<ChangeDp> createState() => _ChangeDpState();
// }
//
// class _ChangeDpState extends State<ChangeDp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Container(
//             padding: EdgeInsets.only(right: 20, top: 10),
//             child: GestureDetector(
//               child: const Text(
//                 'Skip',
//                 style: TextStyle(
//                     color: Color(0xfff2944E),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500),
//               ),
//               onTap: () {},
//             ),
//           )
//         ],
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Container(
//         child: Stack(
//           children: [
//             Positioned(
//                 top: 0,
//                 left: 0,
//                 right: 0,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     // Image.asset(
//                     //   "images/profile/profile.png",
//                     //   scale: 2.4,
//                     // ),
//                     Image.file(widget.image),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     const Text(
//                       "Hey Ashlesh!!",
//                       style: TextStyle(fontSize: 25, color: Color(0xff4F504F)),
//                     ),
//                     const Text("to make it more cool selct",
//                         style:
//                             TextStyle(fontSize: 18, color: Color(0xff4F504F))),
//                     const Text("your avatar.",
//                         style:
//                             TextStyle(fontSize: 18, color: Color(0xff4F504F))),
//                   ],
//                 )),
//             Positioned(
//               bottom: 0,
//               child: Container(
//                 width: 400,
//                 height: 175,
//                 child: Column(
//                   children: [
//                     Container(
//                         width: 400,
//                         height: 1,
//                         color: const Color.fromRGBO(0, 0, 0, 0.1)),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         GestureDetector(
//                           child: Container(
//                             child: Column(
//                               children: [
//                                 Image.asset("images/profile/galary.png"),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 const Text(
//                                   "Gallery",
//                                   style: TextStyle(
//                                       color: const Color(0xfff2944E),
//                                       fontSize: 16),
//                                 )
//                               ],
//                             ),
//                           ),
//                           onTap: () {
//                             Camera.pickImage();
//                           },
//                         ),
//                         Container(
//                           width: 1,
//                           height: 174,
//                           color: const Color.fromRGBO(0, 0, 0, 0.1),
//                         ),
//                         GestureDetector(
//                           child: Container(
//                             child: Column(
//                               children: [
//                                 Image.asset("images/profile/camara.png"),
//                                 const SizedBox(
//                                   height: 15,
//                                 ),
//                                 const Text(
//                                   "Take photo",
//                                   style: TextStyle(
//                                       color: Color(0xfff2944E), fontSize: 16),
//                                 )
//                               ],
//                             ),
//                           ),
//                           onTap: () {},
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
