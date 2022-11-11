import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:dotted_line/dotted_line.dart';

import '../../models/invoice_model.dart';

class PdfInvoiceServices {
  List<InvoiceProducts> itemList = [];

  Future<Uint8List> createInvoice() async {
    var data = await rootBundle.load("fonts/OpenSans.ttf");

    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
              child: pw.Text("pdf downloaded successfully",
                  style: pw.TextStyle(font: pw.TtfFont(data))));
        },
      ),
    );
    return pdf.save();
  }

  Future<Uint8List> createFinalInvoice(List<InvoiceProducts> itemList) async {
    var data = await rootBundle.load("fonts/OpenSans.ttf");

    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Column(children: [
                      pw.Text("Invoice",
                          style: pw.TextStyle(
                              font: pw.TtfFont(data), fontSize: 18)),
                      pw.Text("21-09-2018",
                          style: pw.TextStyle(
                              font: pw.TtfFont(data), fontSize: 15))
                    ]),
                    pw.Text("#0162",
                        style: pw.TextStyle(
                          font: pw.TtfFont(data),
                          fontSize: 13,
                          // color: PdfColorHsv.fromRgb(137, 137, 137)
                        ))
                  ]),
              pw.SizedBox(height: 30),
              pw.Text("Rs 4,000",
                  style: pw.TextStyle(
                      font: pw.TtfFont(data),
                      fontSize: 20,
                      color: PdfColors.orange
                      // color: PdfColorHsv.fromRgb(237, 127, 44)
                      )),
              pw.SizedBox(height: 20),
              pw.Text("Paid",
                  style: pw.TextStyle(
                      font: pw.TtfFont(data), color: PdfColors.green
                      // color: PdfColorHsv.fromRgb(25, 182, 146)
                      )),
              pw.Divider(),
              pw.Table(children: [
                pw.TableRow(children: [
                  pw.Text('PRODUCT',
                      style: pw.TextStyle(
                          font: pw.TtfFont(data), color: PdfColors.grey
                          // color: PdfColorHsv.fromRgb(137, 137, 137)
                          )),
                  pw.Text('UNITS',
                      style: pw.TextStyle(
                          font: pw.TtfFont(data), color: PdfColors.grey
                          // color: PdfColorHsv.fromRgb(137, 137, 137)
                          )),
                  pw.Text('PRICE',
                      style: pw.TextStyle(
                          font: pw.TtfFont(data), color: PdfColors.grey)),
                ]),
                for (int i = 0; i < itemList.length; i++)
                  pw.TableRow(children: [
                    pw.Text('${itemList[i].product}',
                        style: pw.TextStyle(font: pw.TtfFont(data))),
                    pw.Text('${itemList[i].unit}',
                        style: pw.TextStyle(font: pw.TtfFont(data))),
                    pw.Text('${itemList[i].price}',
                        style: pw.TextStyle(font: pw.TtfFont(data)))
                  ]),
              ]),
              pw.SizedBox(height: 20),
              pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                  children: [
                    pw.Text("TOTAL",
                        style: pw.TextStyle(
                          color: PdfColors.grey,
                          font: pw.TtfFont(data),
                          // color: PdfColorHsv.fromRgb(137, 137, 137)
                        )),
                    pw.Text("10,000",
                        style: pw.TextStyle(
                            font: pw.TtfFont(data), color: PdfColors.grey
                            // color: PdfColorHsv.fromRgb(137, 137, 137)
                            ))
                  ]),
              pw.Divider(),
            ],
          );
        },
      ),
    );
    return pdf.save();
  }
}
