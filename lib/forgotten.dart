import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:royalbook_club/Auth_sucess.dart';
import 'package:royalbook_club/Signup1.dart';

class ForgottenScreen extends StatefulWidget {
  static final String id = '/forgotten_password';
  @override
  _ForgottenScreenState createState() => _ForgottenScreenState();
}

class _ForgottenScreenState extends State<ForgottenScreen> {
  final _recoverKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _email, _password;
  bool remember = false;

  _submit() {
    if (_recoverKey.currentState.validate()) {
      _recoverKey.currentState.save();
      Navigator.pushNamed(context, AuthcongratulationScreen.id);
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
          title: Text('Fogotten Password'),
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
                'Fogotten Password',
                style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Please Inpute an Email and we will send an \naccount password recovery link to your Email.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 100,
              ),
              Form(
                key: _recoverKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 8.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'FredokaOne-Regular',
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.purple[900],
                          ),
                          hintText: 'Please input your recovery email.',
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
                            borderSide: BorderSide(color: Colors.purple[900]),
                            gapPadding: 10,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (input) => !input.contains('@')
                            ? 'please input a valid email'
                            : null,
                        onSaved: (input) => _email = input,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
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
                            'Confirm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        SignupScreen.id,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: 'Sign up',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
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
