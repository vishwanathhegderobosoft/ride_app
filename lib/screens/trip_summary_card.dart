import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripSummary extends StatelessWidget {
  const TripSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width - 20,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(
              0,
              0,
            ),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "images/motorcycle.png",
            scale: 2.5,
          ),
          SizedBox(
            height: 15,
          ),
          Text("Scramble Goa",
              style: GoogleFonts.roboto(
                  color: Color(0x99000000),
                  fontSize: 27,
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: 15,
          ),
          Text("12-15 Nov, 2017",
              style:
                  GoogleFonts.roboto(color: Color(0xaa000000), fontSize: 19)),
          SizedBox(
            height: 15,
          ),
          Text("08:00 am",
              style:
                  GoogleFonts.roboto(color: Color(0xaa000000), fontSize: 16)),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Udupi",
                  style: GoogleFonts.roboto(
                      color: Color(0xaa000000), fontSize: 16)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 100,
                height: 2,
                color: Color(0x2f000000),
              ),
              Text("Goa",
                  style: GoogleFonts.roboto(
                      color: Color(0xbb000000), fontSize: 16))
            ],
          )
        ],
      ),
    );
  }
}
