import 'package:flutter/material.dart';

class Annoucement extends StatelessWidget {
  const Annoucement({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
              children: [
                TextSpan(text: "New "),
                TextSpan(
                  text: "Anouncement...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 160,
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
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 0.70,
                  child: Image.asset(
                    "assets/images/Annoucement.png",
                    fit: BoxFit.contain,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            "New books are now added to our collections every Friday, don't for get to place a request for your book ",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
