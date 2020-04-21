import 'package:flutter/material.dart';
import 'package:timetrackerapp/custom_widgets/sign_in_custom_button.dart';

class SignInPage extends StatelessWidget {
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
              height: 8.9,
            ),
            SignInButton(
              text: 'Sign in with Google',
              color: Colors.white,
              textColor: Colors.black87,
              onPressed: () {},
            ),

            SizedBox(
              height: 8.0,
            ),
            SignInButton(
              text: 'Sign in with Facebook',
              color: Color(0xFF334D92),
              textColor: Colors.white,
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
            )
          ]),
    );
  }
}
