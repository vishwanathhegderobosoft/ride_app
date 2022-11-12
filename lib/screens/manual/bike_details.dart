import 'package:flutter/material.dart';

class BikeDetails extends StatefulWidget {
  const BikeDetails({Key? key}) : super(key: key);

  @override
  State<BikeDetails> createState() => _BikeDetailsState();
}

class _BikeDetailsState extends State<BikeDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(
              0,
              0,
            ),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
    );
  }
}
