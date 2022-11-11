import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:ride/widgets/clipper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ride/widgets/clipper.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import '../../models/invoice_model.dart';
import '../../widgets/invoice_constants.dart';
import 'invoice_serviece.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  PdfInvoiceServices pdf = PdfInvoiceServices();

  Future<void> savePDF(String filename, Uint8List byteList) async {
    var filepath = '/storage/emulated/0/Download/invoice.pdf';
    final file = File(filepath);
    await file.writeAsBytes(byteList);
    return;
  }

  @override
  List<InvoiceProducts> invoiceProducts = [
    InvoiceProducts(product: "Item 1", unit: "1", price: "1000/-"),
    InvoiceProducts(product: "Item 2", unit: "2", price: "2000/-"),
    InvoiceProducts(product: "Item 3", unit: "3", price: "3000/-"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              height: 30,
              width: 30,
              child: GestureDetector(
                onTap: () async {
                  final data = await pdf.createFinalInvoice(invoiceProducts);
                  print('Got Data');
                  savePDF("sai", data);
                },
                child: Image.asset(
                  "images/invoice/download.png",
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 30),
          decoration: kInvoiceBackground,
          child: ClipPath(
            clipper: CustomClips(),
            child: Container(
              decoration: kInvoiceBoxDecoration,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Invoice",
                            style: GoogleFonts.roboto(
                                fontSize: 22,
                                color: const Color(0x99000000),
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "#0162",
                            style: kInvoiceLabelTextStyle,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "18 Nov,2017",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: const Color(0x99000000),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Rs 10,000/-",
                              style: kTotalTextStyle,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 80,
                              height: 30,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: const Color(0xff19B692),
                                      width: 1.3)),
                              child: const Center(
                                child: Text(
                                  "√ Paid",
                                  style: TextStyle(
                                      color: Color(0xff19B692),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const DottedLine(
                        direction: Axis.horizontal,
                        dashColor: Colors.black26,
                        lineThickness: 1,
                        dashLength: 8,
                        dashGapRadius: 0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "PRODUCT",
                            style: kInvoiceLabelTextStyle,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "UNIT",
                            style: kInvoiceLabelTextStyle,
                          ),
                          Text(
                            "PRICE",
                            style: kInvoiceLabelTextStyle,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            ...invoiceProducts.map(
                              (e) => Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        e.product,
                                        style: kItemsTextStyle,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        e.unit,
                                        style: kItemsTextStyle,
                                      ),
                                      Text(
                                        e.price,
                                        style: kItemsTextStyle,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOTAL",
                            style: kItemsTextStyle,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "10,000",
                            style: kItemsTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const DottedLine(
                        direction: Axis.horizontal,
                        dashColor: Colors.black26,
                        lineThickness: 1,
                        dashLength: 8,
                        dashGapRadius: 0,
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
