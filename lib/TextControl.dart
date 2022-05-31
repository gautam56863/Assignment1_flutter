import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback onPressed;
  TextControl(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: onPressed,
        child: Text('Press Me'),
      ),
    );
  }
}
