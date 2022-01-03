import 'package:flutter/material.dart';
import 'package:royalbook_club/screens/Search.dart';
import 'package:royalbook_club/screens/librarytopper.dart';

class Libraryheader extends StatelessWidget {
  const Libraryheader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Search(),
            LibraryTopper(
              svgSrc: Icons.notifications_none_rounded,
              numOfItems: 6,
              press: () {},
            ),
            LibraryTopper(
              svgSrc: Icons.bookmark_border_outlined,
              press: () {},
            ),
          ]),
    );
  }
}
