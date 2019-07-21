import 'package:flutter/material.dart';
import '../views/globalViews/navigationBar.dart';
import '../unitl/defineValue.dart';

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
                color: Colors.white,
                child: Stack(
                  children: <Widget>[

                    Positioned(
                      top: getAdapterHeight(20),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(180),
                      child: Image.asset('assets/reservation_images/reservation_reservation.png',
                          fit: BoxFit.fill,
                        ),
                    ),

                    Positioned(
                      top: getAdapterHeight(60),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(60),
                      child: Image.asset('assets/reservation_images/reservation_reservation_center.png',
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
                          Text('预约',
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
                      child: Image.asset('assets/reservation_images/reservation_class.png',
                          fit: BoxFit.fill,
                        ),
                    ),

                    Positioned(
                      top: getAdapterHeight(250),
                      left: 10,
                      right: 10,
                      height: getAdapterHeight(60),
                      child: Image.asset('assets/reservation_images/reservation_class_center.png',
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
                          Text('课表',
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