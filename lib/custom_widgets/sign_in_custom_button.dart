import 'package:flutter/material.dart';
import 'package:timetrackerapp/custom_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {

  SignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
}) : super(
    child: Text(text, style: TextStyle(color: textColor, fontSize: 15.0,
    ),),
    height: 40.0,
    color: color,
    onPressed: onPressed,

  );
}
