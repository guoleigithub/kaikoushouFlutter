import 'package:flutter/material.dart';
import '../views/globalViews/navigationBar.dart';
import '../unitl/defineValue.dart';

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
                color: Colors.white,
                child: Stack(
                  children: <Widget>[

                    Positioned(
                      top: getAdapterHeight(20),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(180),
                      child: Image.asset('assets/evaluation_images/evaluation_myself_test.png',
                          fit: BoxFit.fill,
                        ),
                    ),

                    Positioned(
                      top: getAdapterHeight(60),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(60),
                      child: Image.asset('assets/evaluation_images/evaluation_myself_center.png',
                          fit: BoxFit.fitHeight,
                        ),
                    ),

                    Positioned(
                      top: getAdapterHeight(130),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('自我测评',
                            style: TextStyle(
                              fontSize: getAdapterHeight(16),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      top: getAdapterHeight(210),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(180),
                      child: Image.asset('assets/evaluation_images/evaluation_score.png',
                          fit: BoxFit.fill,
                        ),
                    ),

                    Positioned(
                      top: getAdapterHeight(250),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(60),
                      child: Image.asset('assets/evaluation_images/evaluation_score_center.png',
                          fit: BoxFit.fitHeight,
                        ),
                    ),

                    Positioned(
                      top: getAdapterHeight(320),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('成绩报告',
                            style: TextStyle(
                              fontSize: getAdapterHeight(16),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ]
        )
      )
    );
  }
  
}






