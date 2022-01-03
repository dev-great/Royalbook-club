import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalbook_club/accbody.dart';
import 'package:royalbook_club/BottomNav.dart';
import 'package:royalbook_club/chatting.dart';
import 'package:royalbook_club/library.dart';
import 'package:royalbook_club/Dashboard.dart';

class AccountScreen extends StatefulWidget {
  static final String id = '/account';
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: navBtn(),
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
              isActive: true,
              press: () => Navigator.pushNamed(context, AccountScreen.id),
            ),
          ],
        ),
      ),
      body: AccBody(),
    );
  }

  AppBar navBtn() {
    return AppBar(
      backgroundColor: Colors.indigo[400],
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Settings",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
