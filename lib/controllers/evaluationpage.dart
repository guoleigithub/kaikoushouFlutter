import 'package:flutter/material.dart';
import '../views/globalViews/navigationBar.dart';

class EvaluationView extends StatefulWidget {

  @override
  _EvaluationViewState createState() => new _EvaluationViewState();
  
}

class _EvaluationViewState extends State<EvaluationView> {

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
                color: Colors.blue,
              ),
            ),
          ]
        )
      )
    );
  }
  
}






