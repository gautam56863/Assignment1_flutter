// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './text.dart';
import './TextControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _changeIndex = 0;
  var _changeText = [
    'Hello guys!',
    'This is Gautam here!!',
    'Nice To Meet You.',
    'Thanks for the Access....'
  ];
  void _onPressed() {
    setState(() {
      if (_changeIndex == 3)
        _changeIndex = 0;
      else
        _changeIndex += 1;
      print(_changeIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second App'),
        ),
        body: Column(
          children: [
            Texting(_changeIndex, _changeText),
            TextControl(_onPressed),
          ],
        ),
      ),
    );
  }
}
