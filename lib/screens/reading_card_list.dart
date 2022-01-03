import 'package:flutter/material.dart';
import 'package:royalbook_club/screens/readinglist.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "What book are you\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: " reading Today?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Readinglist(
                image: "assets/images/books/bk1.jpg",
                title: "Built to serve",
                auth: "Evan Carmicael",
                rating: 4.9,
              ),
              Readinglist(
                image: "assets/images/books/bk2.jpg",
                title: "The law of human...",
                auth: "Robert Greene",
                rating: 4.9,
              ),
              Readinglist(
                image: "assets/images/books/bk3.jpg",
                title: "The Four Agreement",
                auth: "Don Miouel Ruiz",
                rating: 4.9,
              ),
              Readinglist(
                image: "assets/images/books/bk4.jpg",
                title: "What if it Dosn't...",
                auth: "Susie Moore",
                rating: 4.9,
              ),
              Readinglist(
                image: "assets/images/books/bk5.jpg",
                title: "Limitless",
                auth: "Jim Kwik",
                rating: 4.9,
              ),
              Readinglist(
                image: "assets/images/books/bk6.jpg",
                title: "Good Food",
                auth: "John McKenna",
                rating: 4.9,
              ),
              Readinglist(
                image: "assets/images/books/bk7.jpg",
                title: "The Subtle act of not...",
                auth: "Mark Manson",
                rating: 4.9,
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
        )
      ],
    );
  }
}
