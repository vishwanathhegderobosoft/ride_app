import 'package:flutter/material.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({Key? key}) : super(key: key);

  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
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
            margin: EdgeInsets.only(top: 5, bottom: 5, right: 15),
            height: 13,
            width: 23,
            child: GestureDetector(
                onTap: () {}, child: Image.asset("images/manual/share.png")),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        //padding: EdgeInsets.only(left: 20),
        //margin: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(
                        3,
                        3,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(
                        -3,
                        -3,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width - 40,
                // width: 300,
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(
                        3,
                        3,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(
                        -3,
                        -3,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width - 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
