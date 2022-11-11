import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';

class ServiceRecords extends StatelessWidget {
  const ServiceRecords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IconData? _selectedIcon;
    double _userRating = 4;
    bool _isVertical = false;
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              decoration: kServiceCardTagDecoration,
              height: 25,
              width: 60,
              child: Center(
                  child: Text(
                "New",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("15", style: kServiceRecordCardDateTextStyle),
                      SizedBox(
                        width: 3,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Nov',
                            style: kServiceRecordCardMonthTextStyle,
                          ),
                          Text(
                            "2017",
                            style: kServiceRecordCardYearTextStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  color: Colors.black12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "General Serviece",
                      style: kServiceRecordCardStarTextStyle,
                    ),
                    RatingBarIndicator(
                      rating: _userRating,
                      itemBuilder: (context, index) => Icon(
                        _selectedIcon ?? Icons.star,
                        color: Color(0xffF3DA3B),
                      ),
                      itemCount: 5,
                      itemSize: 22.0,
                      unratedColor: Color(0xffd3d3d3),
                      direction: _isVertical ? Axis.vertical : Axis.horizontal,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
