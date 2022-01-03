import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatelessWidget {
  final String svgScr;
  final String tittle;
  final Function press;
  final bool isActive;

  const BottomNav({
    Key key,
    this.svgScr,
    this.tittle,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            height: 24,
            width: 24,
            color: isActive ? Colors.orange[800] : Colors.black54,
          ),
          Text(tittle,
              style: TextStyle(
                  color: isActive ? Colors.orange[800] : Colors.black54)),
        ],
      ),
    );
  }
}
