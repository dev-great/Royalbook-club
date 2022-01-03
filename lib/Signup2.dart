import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:royalbook_club/Signup1.dart';
import 'package:royalbook_club/otp_verification.dart';

// ignore: camel_case_types
class SignupScreen_two extends StatefulWidget {
  static final String id = 'Signup_screen_two';

  @override
  _SignupScreen_twoState createState() => _SignupScreen_twoState();
}

// ignore: camel_case_types
class _SignupScreen_twoState extends State<SignupScreen_two> {
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _firstname, _lastname, _address, _number;

  _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      Navigator.pushNamed(context, OtpScreen.id);
    }
  }

  String validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length <= 11)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
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
          title: Text('Sign in'),
          centerTitle: true),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Register Account',
                style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Complete your  Registration with your details or continue with your Social Media.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 8.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'First name',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'FredokaOne-Regular',
                          ),
                          prefixIcon: Icon(
                            Icons.person_add,
                            color: Colors.purple[900],
                          ),
                          hintText: 'Enter your first name.',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(
                              color: Colors.purple[900],
                            ),
                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(
                              color: Colors.purple[900],
                            ),
                            gapPadding: 10,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        validator: validateName,
                        onSaved: (String val) {
                          _firstname = val;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 8.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Last name',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'FredokaOne-Regular',
                          ),
                          prefixIcon: Icon(
                            Icons.person_add,
                            color: Colors.purple[900],
                          ),
                          hintText: 'Enter your Last name.',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(
                              color: Colors.purple[900],
                            ),
                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(
                              color: Colors.purple[900],
                            ),
                            gapPadding: 10,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        validator: validateName,
                        onSaved: (String val) {
                          _lastname = val;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 8.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Pnone number',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'FredokaOne-Regular',
                          ),
                          hintText: 'Enter your Phone number.',
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.purple[900],
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: Colors.purple[900]),
                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(
                              color: Colors.purple[900],
                            ),
                            gapPadding: 10,
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: validateMobile,
                        onSaved: (String val) {
                          _number = val;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 8.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Address',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'FredokaOne-Regular',
                          ),
                          hintText: 'Enter your Address.',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple[900],
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(color: Colors.purple[900]),
                            gapPadding: 10,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide(
                              color: Colors.purple[900],
                            ),
                            gapPadding: 10,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        validator: validateName,
                        onSaved: (String val) {
                          _address = val;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 5.0,
                      ),
                      child: Container(
                        width: 350.0,
                        height: 55,
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: _submit,
                          color: Colors.purple[900],
                          padding: EdgeInsets.all(10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 8.0,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(
                          context,
                          SignupScreen.id,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'By continuing you confirm that you\'ve agreed with our ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: 'terms and conditions ',
                                    style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
