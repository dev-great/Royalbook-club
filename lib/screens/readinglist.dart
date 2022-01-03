import 'package:flutter/material.dart';
import 'package:royalbook_club/screens/bookrating.dart';
import 'package:royalbook_club/screens/doublebtn.dart';

class Readinglist extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function pressDetails;
  final Function pressRead;

  const Readinglist({
    Key key,
    this.image,
    this.title,
    this.auth,
    this.rating,
    this.pressDetails,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, bottom: 40),
      height: 245,
      width: 190,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: Colors.purple.withOpacity(.10)),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 120,
          ),
          Positioned(
            top: 49,
            right: 6,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                Booksrating(score: rating),
              ],
            ),
          ),
          Positioned(
            top: 165,
            child: Container(
              height: 80,
              width: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: auth)
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  SingleChildScrollView(
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            alignment: Alignment.center,
                            child: Text("Details"),
                          ),
                        ),
                        Expanded(
                          child: Doubleroundbtn(
                            text: "Read",
                            pressOn: pressRead,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
