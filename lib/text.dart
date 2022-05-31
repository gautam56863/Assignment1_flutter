import 'package:flutter/material.dart';

class Texting extends StatelessWidget {
  @override
  final List<String> changeText;
  final int changeIndex;
  Texting(this.changeIndex, this.changeText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(25, 45, 78, 1),
      margin: EdgeInsets.all(10),
      child: Text(
        changeText[changeIndex % 5],
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
