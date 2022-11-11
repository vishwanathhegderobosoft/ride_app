import 'package:flutter/cupertino.dart';

BoxDecoration kBookingDetailsTagDecoration = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xcf10B691), Color(0xcc3EE1BC)]),
  borderRadius: BorderRadius.only(
      topRight: Radius.circular(8), bottomLeft: Radius.circular(5)),
);
