import 'package:flutter/material.dart';
import 'package:royalbook_club/Welcome.dart';
import 'package:royalbook_club/account.dart';
import 'package:royalbook_club/library.dart';
import 'package:royalbook_club/forgotten.dart';
import 'package:royalbook_club/Login.dart';
import 'package:royalbook_club/Signup1.dart';
import 'package:royalbook_club/Signup2.dart';
import 'package:royalbook_club/Dashboard.dart';
import 'package:royalbook_club/Auth_sucess.dart';
import 'package:royalbook_club/otp_verification.dart';
import 'package:royalbook_club/chatting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RoyalBook ',
      home: BigsetupScreen(),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Color(0xFFFFFFFF),
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.purple[900],
          ),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black38,
              fontSize: 20,
            ),
          ),
        ),
      ),
      routes: {
        BigsetupScreen.id: (context) => BigsetupScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen_two.id: (context) => SignupScreen_two(),
        SignupScreen.id: (context) => SignupScreen(),
        ForgottenScreen.id: (context) => ForgottenScreen(),
        AuthcongratulationScreen.id: (context) => AuthcongratulationScreen(),
        DashboardScreen.id: (context) => DashboardScreen(),
        OtpScreen.id: (context) => OtpScreen(),
        MsgScreen.id: (context) => MsgScreen(),
        AccountScreen.id: (context) => AccountScreen(),
        LibraryScreen.id: (context) => LibraryScreen(),
      },
    );
  }
}
