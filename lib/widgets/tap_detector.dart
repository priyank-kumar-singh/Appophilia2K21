import 'package:flutter/material.dart';

class TapDetector extends StatelessWidget {
  TapDetector({
    this.child,
    this.onTap,
  });
  final Widget child;
  final Function onTap;

  Widget build(BuildContext context) {
    return InkWell(
      child: child,
      onTap: onTap,
      splashColor: Colors.transparent,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
    );
  }
}
