import 'package:flutter/material.dart';
import 'package:royalbook_club/screens/libbanner.dart';
import 'package:royalbook_club/screens/specialoffercard.dart';

class Specialoffer extends StatelessWidget {
  const Specialoffer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Libbanner(
          text: "Special release",
          press: () {},
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Specialoffercard(
                image: "assets/images/bgimg/1.jpg",
                cartigory: "Self help",
                numOfBooks: 21,
                press: () {},
              ),
              Specialoffercard(
                image: "assets/images/bgimg/2.jpg",
                cartigory: "Motivationals",
                numOfBooks: 40,
                press: () {},
              ),
              Specialoffercard(
                image: "assets/images/bgimg/3.jpg",
                cartigory: "Health",
                numOfBooks: 10,
                press: () {},
              ),
              Specialoffercard(
                image: "assets/images/bgimg/4.jpg",
                cartigory: "History",
                numOfBooks: 23,
                press: () {},
              ),
              Specialoffercard(
                image: "assets/images/bgimg/5.jpg",
                cartigory: "Personal Development",
                numOfBooks: 45,
                press: () {},
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
