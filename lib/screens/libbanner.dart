import 'package:flutter/material.dart';

class Libbanner extends StatelessWidget {
  const Libbanner({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "See more",
              style: TextStyle(color: Colors.black45, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
