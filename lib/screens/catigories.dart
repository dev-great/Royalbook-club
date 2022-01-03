import 'package:flutter/material.dart';

class Cartigories extends StatefulWidget {
  final Function press;

  const Cartigories({Key key, this.press}) : super(key: key);
  @override
  _CartigoriesState createState() => _CartigoriesState();
}

class _CartigoriesState extends State<Cartigories> {
  List<String> cartigories = [
    "Trending",
    "Expolre",
    "Best sellers",
    "Newest",
  ];
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          itemCount: cartigories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCartigories(index),
        ),
      ),
    );
  }

  Widget buildCartigories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: selectIndex == index ? Colors.purple[50] : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          cartigories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: selectIndex == index ? Colors.black : Colors.black45,
          ),
        ),
      ),
    );
  }
}
