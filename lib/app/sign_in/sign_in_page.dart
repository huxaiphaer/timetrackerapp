import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timetrackerapp/custom_widgets/sign_in_custom_button.dart';
import 'package:timetrackerapp/custom_widgets/social_sign_in_button.dart';

class SignInPage extends StatelessWidget {

  SignInPage({@required this.onSignIn});

  final Function(FirebaseUser) onSignIn;


  Future<void> _signInAnonymously() async {
    try {
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(authResult.user);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[50],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w100),
            ),
            SizedBox(
              height: 8.0,
            ),
            SocialSignInButton(
              assetName: 'images/google-logo.png',
              text: 'Sign in with Google',
              textColor: Colors.black87,
              onPressed: () {},
              color: Colors.white,
            ),

            SizedBox(
              height: 8.0,
            ),
            SizedBox(
              height: 8.0,
            ),
            SocialSignInButton(
              assetName: 'images/facebook-logo.png',
              text: 'Sign in with Facbeook',
              textColor: Colors.white,
              color: Color(0xFF334D92),
              onPressed: () {},
            ),
            SizedBox(
              height: 8.0,
            ),
            SignInButton(
              text: 'Sign in with email',
              color: Colors.teal[700],
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'or',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            SignInButton(
              text: 'Go anonymous',
              color: Colors.lime[300],
              textColor: Colors.black,
              onPressed: _signInAnonymously,
            ),
          ]),
    );
  }
}
