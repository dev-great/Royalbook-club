import 'package:flutter/material.dart';

class Specialoffercard extends StatelessWidget {
  const Specialoffercard({
    Key key,
    @required this.cartigory,
    @required this.image,
    @required this.numOfBooks,
    @required this.press,
  }) : super(key: key);
  final String cartigory, image;
  final int numOfBooks;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 240,
        height: 95,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: <Widget>[
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.3),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$cartigory\n",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "$numOfBooks best release")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
