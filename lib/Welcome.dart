import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:royalbook_club/Login.dart';

class BigsetupScreen extends StatefulWidget {
  static final String id = 'BigsetupScreen';

  @override
  _BigsetupScreenState createState() => _BigsetupScreenState();
}

class _BigsetupScreenState extends State<BigsetupScreen> {
  final int _numPages = 3;
  int _currentpage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  List<Widget> _buildPageIndecator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentpage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 30.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],
                colors: [
                  Color(0xFFEDE7F6),
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                  Color(0xFFEDE7F6),
                ]),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(
                      context,
                      LoginScreen.id,
                    ),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 500.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentpage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/land1.png'),
                                height: 250.0,
                                width: 250.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Royalbook ',
                              style: TextStyle(
                                fontFamily: 'Pacifico-Regular',
                                color: Colors.purple[900],
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Welcome to Royal Book Club, A non-fictional interactive e-book learning community.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/lands2.png'),
                                height: 250.0,
                                width: 250.0,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'The Community',
                              style: TextStyle(
                                fontFamily: 'Pacifico-Regular',
                                color: Colors.purple[900],
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Royalbook community, the fastest growing book club community with experts cut across all fields of life.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage('assets/images/land3.png'),
                                height: 250.0,
                                width: 250.0,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Online Bookstore',
                              style: TextStyle(
                                color: Colors.purple[900],
                                fontFamily: 'Pacifico-Regular',
                                fontWeight: FontWeight.normal,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'You can get your books and materials at our store at dicounted and affordable prices. Check out our store today!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndecator(),
                ),
                _currentpage != _numPages + 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.purple[900],
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.purple[900],
                                  size: 30.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentpage == _numPages - 1
          ? Container(
              height: 100.0,
              width: double.infinity,
              color: Color(0xFFEDE7F6),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  LoginScreen.id,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
