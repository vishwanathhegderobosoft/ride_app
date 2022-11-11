import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../models/book_details_model.dart';
import '../widgets/constants_booking_details.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({Key? key}) : super(key: key);

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    IconData? _selectedIcon;
    double _rating = 0;
    BookServiceModel details = BookServiceModel(
        mobileNumber: "9483538637",
        vehicleType: "general",
        vehicleNumber: "KA09 HT6969",
        serviceType: "General",
        city: "mysore",
        dealer: "tune moters",
        slotDate: "jan 7",
        slotTime: "10:00am",
        comments: "no Comments");
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffed863a),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 10),
              height: 40,
              width: 40,
              child: GestureDetector(
                  onTap: () {
                    // TODO:Navigate to invoice screen
                  },
                  child: Image.asset("images/invoice_logo.png")),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.85,
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(
                          1,
                          -0.5,
                        ),
                        color: Colors.black26,
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '15',
                                      style: GoogleFonts.roboto(
                                          color: Color(0xffED7F2C),
                                          fontSize: 45,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Nov",
                                          style: GoogleFonts.roboto(
                                              color: Color(0xffED7F2C),
                                              fontSize: 22,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          "2017",
                                          style: GoogleFonts.roboto(
                                            fontSize: 18,
                                            color: Color(0xffED7F2C),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  color: Color(0x25000000),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "General Service",
                                      style: GoogleFonts.roboto(
                                          color: Color(0x99000000)),
                                    ),
                                    RatingBarIndicator(
                                      rating: 0,
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: Color(0xffF3DA3B),
                                      ),
                                      itemCount: 5,
                                      itemSize: 23.0,
                                      unratedColor: Color(0xffd3d3d3),
                                      direction: Axis.horizontal,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ...details
                              .toJson()
                              .entries
                              .toList()
                              .map((e) => Column(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                              width: 100,
                                              child: Text(
                                                e.key,
                                                style: GoogleFonts.roboto(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w900,
                                                    color: Color(0x99000000)),
                                              )),
                                          Text(':'),
                                          Container(
                                            width: 100,
                                            alignment: Alignment.centerRight,
                                            child: Text(e.value,
                                                style: GoogleFonts.roboto(
                                                    fontSize: 15,
                                                    color: Color(0x99000000))),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        thickness: 1,
                                      ),
                                    ],
                                  )),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          decoration: kBookingDetailsTagDecoration,
                          height: 25,
                          width: 65,
                          child: Center(
                              child: Text(
                            "Past",
                            style: TextStyle(color: Colors.white),
                          )),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Total bill paid",
                style:
                    GoogleFonts.roboto(color: Color(0x99000000), fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Rs 4000/-",
                  style: GoogleFonts.roboto(
                      color: Color(0xffED7F2C),
                      fontSize: 35,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 20,
              ),
              Text("Rate the Service"),
              SizedBox(
                height: 20,
              ),
              RatingBar.builder(
                initialRating: _rating,
                minRating: 0,
                unratedColor: Color(0x33000000),
                itemCount: 5,
                itemSize: 25.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  _selectedIcon ?? Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    _rating = rating;
                  });
                },
                updateOnDrag: true,
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ));
  }
}
