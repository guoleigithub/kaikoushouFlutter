import 'package:flutter/material.dart';
import '../views/globalViews/navigationBar.dart';
import '../unitl/defineValue.dart';

class CenterView extends StatefulWidget {

  @override
  _CenterViewState createState() => new _CenterViewState();
  
}

class _CenterViewState extends State<CenterView> {




  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[

            Positioned(
              top: 64+getAdapterHeight(10),
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment : CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.headset,size: getAdapterHeight(60),)
                ],
              ),
            ),

            Positioned(
              top: getAdapterHeight(120),
              left: 10,
              right: 10,
              bottom: 30,
              child: Text("hello every one "),
            ),

          ],
        ),
      )
    );
  }
  
}







