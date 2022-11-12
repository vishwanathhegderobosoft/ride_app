import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ride/screens/manual/edit_details.dart';
import 'package:ride/screens/manual/personal_details.dart';
import 'manual_constants.dart';
import 'bike_details.dart';

class OwnersManual extends StatefulWidget {
  @override
  State<OwnersManual> createState() => _OwnersManualState();
}

class _OwnersManualState extends State<OwnersManual> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 148, 85, 1),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5, right: 20),
            height: 13,
            width: 23,
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EditDetails()));
                },
                child: Image.asset("images/manual/edit_pencil.png")),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5, right: 15),
            height: 13,
            width: 23,
            child: GestureDetector(
                onTap: () {}, child: Image.asset("images/manual/share.png")),
          )
        ],
        title: Text("Owners Manual"),
      ),
      body: Container(
        // color: Colors.purple,
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Text("Personal Details",
                                style:
                                    index == 0 ? kActiveIndex : kInactiveIndex),
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 2.5,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: index == 0
                                  ? const Color(0xFFED7F2C)
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Text("Bike Details",
                                style:
                                    index == 1 ? kActiveIndex : kInactiveIndex),
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 2.5,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: index == 1
                                  ? const Color(0xFFED7F2C)
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  IndexedStack(
                    index: index,
                    children: [PersonalDetails(), BikeDetails()],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
