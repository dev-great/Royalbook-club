import 'package:flutter/material.dart';
import 'package:royalbook_club/screens/bookrating.dart';
import 'package:royalbook_club/screens/doublebtn.dart';

class Wbook extends StatelessWidget {
  const Wbook({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
              children: [
                TextSpan(text: "Our book for the "),
                TextSpan(
                  text: "week",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Wbooknum(
            wimage: "assets/images/books/bk6.jpg",
            wtitle: "Title: Good Food",
            wauth: "Author: John McKenna",
            wrating: 4.6,
          )
        ],
      ),
    );
  }
}

class Wbooknum extends StatelessWidget {
  final String wimage;
  final String wtitle;
  final String wauth;
  final double wrating;
  const Wbooknum({
    Key key,
    this.wimage,
    this.wtitle,
    this.wauth,
    this.wrating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 25, right: 120),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFFF).withOpacity(.70),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: Colors.purple.withOpacity(.10)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    wtitle,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    wauth,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Booksrating(score: wrating),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Review begins on Friday 08:00 PM (GMT+1) WAT",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              wimage,
              width: 130,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 35,
              width: 130,
              child: Doubleroundbtn(text: "Read"),
            ),
          )
        ],
      ),
    );
  }
}
