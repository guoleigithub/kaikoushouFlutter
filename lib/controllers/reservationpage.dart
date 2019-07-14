import 'package:flutter/material.dart';
import '../views/globalViews/navigationBar.dart';

class ReservationPageView extends StatelessWidget {


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
                color: Colors.red,
              ),
            ),
          ]
        )
      )
    );
  }


  
}