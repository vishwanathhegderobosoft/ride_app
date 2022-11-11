import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

BoxDecoration kLargeSubmitButtonDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xffED7E2B), Color(0xffF4A264)]),
    boxShadow: const [
      BoxShadow(
        offset: Offset(
          1,
          1,
        ),
        //  blurStyle: BlurStyle.inner,
        color: Colors.black26,
        blurRadius: 1,
        spreadRadius: 1,
      ),
    ]);
TextStyle kLargeSubmitButtonTextDecoration = const TextStyle(
    color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17);

BoxDecoration kSplashScreenDecoration = const BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xffED7E2B), Color(0xffF4A264)]),
  image: DecorationImage(
    image: AssetImage("images/splash_bg.png"),
    fit: BoxFit.fill,
  ),
);

BoxDecoration kServiceCardTagDecoration = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xcfED7E2B), Color(0xccF4A264)]),
  borderRadius: BorderRadius.only(
      topRight: Radius.circular(10), bottomLeft: Radius.circular(5)),
);
TextStyle kServiceCardTextStyle = GoogleFonts.roboto(
    color: Color.fromRGBO(0, 0, 0, 0.5), fontWeight: FontWeight.w500);

TextStyle kServiceRecordCardDateTextStyle = GoogleFonts.roboto(
    color: Color(0xffED7F2C), fontWeight: FontWeight.w900, fontSize: 50);

TextStyle kServiceRecordCardMonthTextStyle = GoogleFonts.roboto(
    color: Color(0xffED7F2C), fontWeight: FontWeight.w600, fontSize: 23);

TextStyle kServiceRecordCardYearTextStyle = GoogleFonts.roboto(
    color: Color(0xffED7F2C), fontWeight: FontWeight.w500, fontSize: 18);

TextStyle kServiceRecordCardStarTextStyle = GoogleFonts.roboto(
    color: Color(0x9a000000), fontWeight: FontWeight.normal, fontSize: 15);
