import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalbook_club/account.dart';
import 'package:royalbook_club/BottomNav.dart';
import 'package:royalbook_club/chatting.dart';
import 'package:royalbook_club/library.dart';
import 'package:royalbook_club/screens/catigories.dart';
import 'package:royalbook_club/screens/reading_card_list.dart';
import 'package:royalbook_club/screens/wbook.dart';

import 'screens/annoucement.dart';
import 'screens/dashboard_intro.dart';

class DashboardScreen extends StatefulWidget {
  static final String id = '/Dashboard';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: new AppBar(
        elevation: 1,
        shadowColor: Colors.deepPurple[50],
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: InkResponse(
            onTap: () {},
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Royalbook",
          style: TextStyle(
            color: Colors.purple[900],
            fontWeight: FontWeight.normal,
            fontFamily: 'Pacifico-Regular',
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 12, right: 20.0),
                child: InkResponse(
                  child: Icon(
                    Icons.mail_outline_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                  bottom: 12.0,
                  right: 8.0,
                  child: Container(
                    height: 18.0,
                    width: 18.0,
                    decoration: BoxDecoration(
                      color: Colors.orange[800],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkResponse(
              child: Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNav(
              svgScr: "assets/images/icons/home.svg",
              tittle: "Home",
              isActive: true,
              press: () => Navigator.pushNamed(context, DashboardScreen.id),
            ),
            BottomNav(
              svgScr: "assets/images/icons/library.svg",
              tittle: "Library",
              press: () => Navigator.pushNamed(context, LibraryScreen.id),
            ),
            BottomNav(
              svgScr: "assets/images/icons/send.svg",
              tittle: "Chats",
              press: () => Navigator.pushNamed(context, MsgScreen.id),
            ),
            BottomNav(
              svgScr: "assets/images/icons/settings.svg",
              tittle: "Account",
              press: () => Navigator.pushNamed(context, AccountScreen.id),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Dashboard_intro(),
              Trending(),
              Wbook(),
              Annoucement(),
            ],
          ),
        ),
      ),
    );
  }
}
