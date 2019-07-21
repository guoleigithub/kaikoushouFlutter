import 'package:flutter/material.dart';
import 'dart:io';

class CustomBarView extends StatefulWidget {

  int index = 0;

  CustomBarView({this.index});  

  @override
  _CustomBarViewState createState() => new _CustomBarViewState();

}

class _CustomBarViewState extends State<CustomBarView> {

  @override
  Widget build(BuildContext context) {
    double barheight = MediaQuery.of(context).padding.top+44;
    List <Widget>childs = <Widget>[
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
        ];
    if(widget.index == 4) {
      childs = <Widget>[
          Positioned(
            right: 10,
            bottom: 10,
            child: Icon(Icons.message,size: 30),
          ),
        ];
    }

    return Container(
      height: barheight,
      color: Colors.white,
      child: Stack(
        children: childs,
      ),
    );
  }
  
}

