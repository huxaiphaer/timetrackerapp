import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetrackerapp/app/home_page/home_page.dart';
import 'package:timetrackerapp/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  FirebaseUser _user;

  void _updateUser(FirebaseUser user){

    print('User id : ${ user.uid}');

    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {

    if (_user == null){
      return SignInPage(

        onSignIn: _updateUser,
      );
    }

    // Temporary placeholder for the homepage
    return HomePage();
  }
}
