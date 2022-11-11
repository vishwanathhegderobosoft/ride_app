import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_button.dart';

class CheckDetails extends StatefulWidget {
  const CheckDetails({Key? key}) : super(key: key);

  @override
  State<CheckDetails> createState() => _CheckDetailsState();
}

class _CheckDetailsState extends State<CheckDetails> {
  IconData? _selectedIcon;
  double _userRating = 4;
  bool _isVertical = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            height: 250,
            width: double.infinity,
            child: Image.asset(
              'images/checkslot.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Stack(
              children: [
                Positioned(
                    top: 20,
                    right: 10,
                    child: Text("4km",
                        style: GoogleFonts.roboto(
                            color: Color(0x99000000), fontSize: 14))),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBarIndicator(
                      rating: _userRating,
                      itemBuilder: (context, index) => Icon(
                        _selectedIcon ?? Icons.star,
                        color: Color(0xffF3DA3B),
                      ),
                      itemCount: 5,
                      itemSize: 24.0,
                      unratedColor: Color(0xffd3d3d3),
                      direction: _isVertical ? Axis.vertical : Axis.horizontal,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Tune Moters",
                      style: GoogleFonts.roboto(
                          color: Color(0xffED7F2C),
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: Text(
                        "217, NH 66, Santhekatte, Edapally,Udupi, Karnataka 576105",
                        style: GoogleFonts.roboto(
                            color: Color(0x99000000), fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Authorosed Server center",
                      style: GoogleFonts.roboto(
                          color: Color(0x99000000), fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("+91 44 46292229",
                        style: GoogleFonts.roboto(
                            color: Color(0x99000000), fontSize: 14)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child:
                          LargeSubmitButton(text: "CHECK SLOT", ontap: () {}),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
