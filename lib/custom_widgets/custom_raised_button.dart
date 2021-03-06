import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  CustomRaisedButton(
      {this.color,
        this.borderRadius : 8.0,
        this.onPressed,
        this.child,
        this.height : 50.0
      }) : assert(borderRadius != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Container(
        child: RaisedButton(
          child: child,
          color: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
