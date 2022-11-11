// body: Stack(
//   children: [
//     SingleChildScrollView(
//       child: SizedBox(
//         // height: 800,
//         child: Image.asset(
//           'images/invoice/invoice.png',
//           fit: BoxFit.fill,
//         ),
//       ),
//     ),
//     Container(
//       margin: const EdgeInsets.all(40),
//       // color: Colors.red,
//       height: 800,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Invoice",
//                 style: GoogleFonts.roboto(
//                     fontSize: 22,
//                     color: const Color(0x99000000),
//                     fontWeight: FontWeight.normal),
//               ),
//               Text(
//                 "#0162",
//                 style: kInvoiceLabelTextStyle,
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           Text(
//             "18 Nov,2017",
//             style: GoogleFonts.roboto(
//                 fontSize: 16,
//                 color: const Color(0x99000000),
//                 fontWeight: FontWeight.w500),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           Container(
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   "Rs 10,000/-",
//                   style: kTotalTextStyle,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   width: 80,
//                   height: 30,
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 6, vertical: 3),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       border: Border.all(
//                           color: const Color(0xff19B692),
//                           width: 1.3)),
//                   child: const Center(
//                     child: Text(
//                       "√ Paid",
//                       style: TextStyle(
//                           color: Color(0xff19B692),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           const DottedLine(
//             direction: Axis.horizontal,
//             dashColor: Colors.black26,
//             lineThickness: 1,
//             dashLength: 8,
//             dashGapRadius: 0,
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "PRODUCT",
//                 style: kInvoiceLabelTextStyle,
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 "UNIT",
//                 style: kInvoiceLabelTextStyle,
//               ),
//               Text(
//                 "PRICE",
//                 style: kInvoiceLabelTextStyle,
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
//             // color: Colors.red,
//             height: 175,
//             width: double.infinity,
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   ...invoiceProducts.map(
//                     (e) => Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment:
//                               MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               e.product,
//                               style: kItemsTextStyle,
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               e.unit,
//                               style: kItemsTextStyle,
//                             ),
//                             Text(
//                               e.price,
//                               style: kItemsTextStyle,
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "TOTAL",
//                 style: kItemsTextStyle,
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 "10,000",
//                 style: kItemsTextStyle,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const DottedLine(
//             direction: Axis.horizontal,
//             dashColor: Colors.black26,
//             lineThickness: 1,
//             dashLength: 8,
//             dashGapRadius: 0,
//           ),
//           const SizedBox(
//             height: 20,
//           )
//         ],
//       ),
//     )
//   ],
// )
