import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:royalbook_club/BottomNav.dart';
import 'package:royalbook_club/account.dart';
import 'package:royalbook_club/Dashboard.dart';
import 'package:royalbook_club/chatting.dart';
import 'package:royalbook_club/screens/doublebtn.dart';
import 'screens/libbanner.dart';
import 'screens/libraryheader.dart';
import 'screens/specialoffer.dart';

class LibraryScreen extends StatefulWidget {
  static final String id = '/download';
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              isActive: true,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Libraryheader(),
              SizedBox(
                height: 20,
              ),
              Specialoffer(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 220,
                child: AspectRatio(
                    aspectRatio: 0.90,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Container(
                            //color: Colors.blueAccent[100],
                            ),
                        ClipPath(
                          clipper: CustomLibraryItems(),
                          child: AspectRatio(
                            aspectRatio: 1.105,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  color: Colors.grey[300],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          child: AspectRatio(
                            aspectRatio: 1.15,
                            child: FadeInImage.assetNetwork(
                                placeholder: "assets/images/books/bk1.jpg",
                                image: "assets/images/books/bk1.jpg"),
                          ),
                          
                        ),
                       
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: SizedBox(
                            height: 35,
                            width: 130,
                            child: Doubleroundbtn(text: "Read"),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLibraryItems extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    double connerSize = 30;
    path.lineTo(0, height - connerSize);
    path.quadraticBezierTo(0, height, connerSize, height);
    path.lineTo(width - connerSize, height);
    path.quadraticBezierTo(
      width,
      height,
      width,
      height - connerSize,
    );
    path.lineTo(width, connerSize);
    path.quadraticBezierTo(width, 0, width - connerSize, 0);
    path.lineTo(connerSize, connerSize * 0.75);
    path.quadraticBezierTo(0, connerSize, 0, connerSize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
