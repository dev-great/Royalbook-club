import 'package:flutter/material.dart';

class Doubleroundbtn extends StatelessWidget {
  final String text;
  final double radious;
  final Function pressOn;
  const Doubleroundbtn({
    Key key,
    this.text,
    this.radious = 30,
    this.pressOn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressOn,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radious),
              bottomRight: Radius.circular(radious)),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
