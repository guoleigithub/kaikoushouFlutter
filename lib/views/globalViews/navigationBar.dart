import 'package:flutter/material.dart';
import 'dart:io';

class CustomBarView extends StatefulWidget {

  @override
  _CustomBarViewState createState() => new _CustomBarViewState();

}

class _CustomBarViewState extends State<CustomBarView> {

  @override
  Widget build(BuildContext context) {
    double barheight = MediaQuery.of(context).padding.top+44;
    return Container(
      height: barheight,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 10,
            bottom: 10,
            child: Icon(Icons.message,size: 30),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Icon(Icons.people,size: 40),
          ),
          Positioned(
            left: 60,
            bottom: 20,
            child: Text('XXX'),
          ),
        ],
      ),
    );
  }
  
}

