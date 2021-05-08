import 'package:flutter/material.dart';

class Inputbutton extends StatefulWidget {
  final String title;
  final Function onPressed;

  const Inputbutton({this.title, this.onPressed});

  @override
  _InputbuttonState createState() => _InputbuttonState();
}

class _InputbuttonState extends State<Inputbutton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(widget.title,
          style: TextStyle(color: Colors.white)),
      color: Colors.blue,
      onPressed: widget.onPressed,
    );
  }
}
