import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:royalbook_club/Dashboard.dart';

class OtpScreen extends StatefulWidget {
  static final String id = '/otpScreen';
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    super.dispose();
  }

  @override
  // ignore: override_on_non_overriding_member
  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: new AppBar(
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 30,
          ),
          title: Text('OTP Verification'),
          centerTitle: true),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'OTP Verification',
                  style: TextStyle(
                      color: Colors.purple[900],
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'We have sent your code to your mobile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'number. This code expires in  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 60.0, end: 0),
                      duration: Duration(seconds: 60),
                      builder: (context, value, child) => Text(
                        "00:${value.toInt()}",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                        ),
                      ),
                      onEnd: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Form(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60,
                            child: TextFormField(
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              autofocus: true,
                              onChanged: (value) {
                                nextField(
                                    value: value, focusNode: pin2FocusNode);
                              },
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.purple[900],
                                  ),
                                  gapPadding: 10,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            child: TextFormField(
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              focusNode: pin2FocusNode,
                              onChanged: (value) {
                                nextField(
                                    value: value, focusNode: pin3FocusNode);
                              },
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.purple[900],
                                  ),
                                  gapPadding: 10,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            child: TextFormField(
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              focusNode: pin3FocusNode,
                              onChanged: (value) {
                                nextField(
                                    value: value, focusNode: pin4FocusNode);
                              },
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.purple[900],
                                  ),
                                  gapPadding: 10,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            child: TextFormField(
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                              focusNode: pin4FocusNode,
                              onChanged: (value) {
                                pin2FocusNode.unfocus();
                              },
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.purple[900],
                                  ),
                                  gapPadding: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 5.0,
                        ),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(
                            context,
                            DashboardScreen.id,
                          ),
                          child: Container(
                            width: 350.0,
                            height: 55,
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              onPressed: () => Navigator.pushNamed(
                                context,
                                DashboardScreen.id,
                              ),
                              color: Colors.purple[900],
                              padding: EdgeInsets.all(10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Resend OTP',
                        style: TextStyle(
                          color: Colors.purple[900],
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
