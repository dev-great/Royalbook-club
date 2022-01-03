import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalbook_club/BottomNav.dart';
import 'package:royalbook_club/Dashboard.dart';
import 'package:royalbook_club/account.dart';
import 'package:royalbook_club/library.dart';

class MsgScreen extends StatefulWidget {
  static final String id = '/msg';

  @override
  _MsgScreenState createState() => _MsgScreenState();
}

class _MsgScreenState extends State<MsgScreen> {
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
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkResponse(
              child: Icon(
                Icons.cloud_download_sharp,
                size: 30,
                color: Colors.black,
              ),
            ),
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
              isActive: true,
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
            children: [],
          ),
        ),
      ),
    );
  }
}
