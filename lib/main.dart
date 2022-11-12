import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ride/screens/chat/chat_Screen.dart';
import 'package:ride/screens/invoice/invoice_screen.dart';
import 'package:ride/screens/manual/owners_manual.dart';
import 'package:ride/screens/profile_header.dart';
import 'package:ride/screens/tool_kit.dart';
import 'package:timeline_node/timeline_node.dart';
import 'package:ride/screens/accessories_card.dart';
import 'package:ride/screens/profile_followers.dart';
import 'widgets/custom_button.dart';
import 'screens/service_card.dart';
import 'package:flutter/material.dart';
import 'screens/trip_summary_card.dart';
import 'screens/service_records_card.dart';
import 'screens/trip_card.dart';
import 'screens/check_slot.dart';
import 'screens/booking_details.dart';
import 'screens/encryption.dart';
import 'package:flutter/material.dart';
import 'package:timeline_node/timeline_node.dart';
import 'package:pdf/pdf.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OwnersManual(),
    );
  }
}

//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   List<InvoiceProducts> invoiceProducts = [
//     InvoiceProducts(product: "Item 1", unit: "1", price: "1000/-"),
//     InvoiceProducts(product: "Item 2", unit: "2", price: "2000/-"),
//     InvoiceProducts(product: "Item 3", unit: "3", price: "3000/-"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//           appBar: AppBar(
//             actions: [
//               Container(
//                 margin: const EdgeInsets.only(right: 20),
//                 height: 30,
//                 width: 30,
//                 child: GestureDetector(
//                   onTap: () {},
//                   child: Image.asset(
//                     "images/invoice/download.png",
//                   ),
//                 ),
//               )
//             ],
//             elevation: 0,
//             backgroundColor: Colors.transparent,
//           ),
//           body: Container(
//             margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 30),
//             decoration: kInvoiceBackground,
//             child: ClipPath(
//               clipper: CustomClips(),
//               child: Container(
//                 decoration: kInvoiceBoxDecoration,
//                 width: double.infinity,
//                 child: SingleChildScrollView(
//                   child: Container(
//                     margin: const EdgeInsets.all(40),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Invoice",
//                               style: GoogleFonts.roboto(
//                                   fontSize: 22,
//                                   color: const Color(0x99000000),
//                                   fontWeight: FontWeight.normal),
//                             ),
//                             Text(
//                               "#0162",
//                               style: kInvoiceLabelTextStyle,
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           "18 Nov,2017",
//                           style: GoogleFonts.roboto(
//                               fontSize: 16,
//                               color: const Color(0x99000000),
//                               fontWeight: FontWeight.w500),
//                         ),
//                         const SizedBox(
//                           height: 40,
//                         ),
//                         Container(
//                           width: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Rs 10,000/-",
//                                 style: kTotalTextStyle,
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               Container(
//                                 width: 80,
//                                 height: 30,
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 6, vertical: 3),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(12),
//                                     border: Border.all(
//                                         color: const Color(0xff19B692),
//                                         width: 1.3)),
//                                 child: const Center(
//                                   child: Text(
//                                     "√ Paid",
//                                     style: TextStyle(
//                                         color: Color(0xff19B692),
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         const DottedLine(
//                           direction: Axis.horizontal,
//                           dashColor: Colors.black26,
//                           lineThickness: 1,
//                           dashLength: 8,
//                           dashGapRadius: 0,
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "PRODUCT",
//                               style: kInvoiceLabelTextStyle,
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "UNIT",
//                               style: kInvoiceLabelTextStyle,
//                             ),
//                             Text(
//                               "PRICE",
//                               style: kInvoiceLabelTextStyle,
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Container(
//                           width: double.infinity,
//                           child: Column(
//                             children: [
//                               ...invoiceProducts.map(
//                                 (e) => Column(
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           e.product,
//                                           style: kItemsTextStyle,
//                                         ),
//                                         const SizedBox(
//                                           width: 10,
//                                         ),
//                                         Text(
//                                           e.unit,
//                                           style: kItemsTextStyle,
//                                         ),
//                                         Text(
//                                           e.price,
//                                           style: kItemsTextStyle,
//                                         )
//                                       ],
//                                     ),
//                                     const SizedBox(
//                                       height: 20,
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "TOTAL",
//                               style: kItemsTextStyle,
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "10,000",
//                               style: kItemsTextStyle,
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         const DottedLine(
//                           direction: Axis.horizontal,
//                           dashColor: Colors.black26,
//                           lineThickness: 1,
//                           dashLength: 8,
//                           dashGapRadius: 0,
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
