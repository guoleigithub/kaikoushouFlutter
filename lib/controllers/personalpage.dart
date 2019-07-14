import 'package:flutter/material.dart';
import '../views/globalViews/navigationBar.dart';

class PersonalView extends StatefulWidget {

  @override
  _PersonalViewState createState() => new _PersonalViewState();
  
}

class _PersonalViewState extends State<PersonalView> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CustomBarView(),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
          ]
        )
      )
    );
  }
  
}



