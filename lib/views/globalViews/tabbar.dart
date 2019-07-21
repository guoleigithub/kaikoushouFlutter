import 'package:flutter/material.dart';

typedef void TabbarSelectedCallBack(int selectedIndex);

class CustomTabbarView extends StatefulWidget {

  int selectedIndex = 0;
  TabbarSelectedCallBack callBackFun;

  CustomTabbarView({this.selectedIndex,this.callBackFun});

  @override
  _CustomTabbarViewState createState() => new _CustomTabbarViewState();
}

class _CustomTabbarViewState extends State<CustomTabbarView> {


  List _tabbarImage = new List();
  List _tabbarSelected = new List();

  @override
  void initState() {
    super.initState();
    _tabbarImage.add('assets/tabbar_images/tabbar_homepage.png');
    _tabbarImage.add('assets/tabbar_images/tabbar_reservation.png');
    _tabbarImage.add('assets/tabbar_images/tabbar_center.png');
    _tabbarImage.add('assets/tabbar_images/tabbar_evaluation.png');
    _tabbarImage.add('assets/tabbar_images/tabbar_personal.png');

    _tabbarSelected.add('assets/tabbar_images/tabbar_homepage_selected.png');
    _tabbarSelected.add('assets/tabbar_images/tabbar_reservation_selected.png');
    _tabbarSelected.add('assets/tabbar_images/tabbar_center.png');
    _tabbarSelected.add('assets/tabbar_images/tabbar_evaluation_selected.png');
    _tabbarSelected.add('assets/tabbar_images/tabbar_personal_selected.png');
  }

  @override
  Widget build(BuildContext context) {

    double tabbarheight = MediaQuery.of(context).padding.bottom+49;
    String firstImage = (widget.selectedIndex==0?_tabbarSelected[0]:_tabbarImage[0]).toString();
    String secondImage = (widget.selectedIndex==1?_tabbarSelected[1]:_tabbarImage[1]).toString();
    String thirdImage = _tabbarSelected[2].toString();
    String fourthImage = (widget.selectedIndex==3?_tabbarSelected[3]:_tabbarImage[3]).toString();
    String fivethImage = (widget.selectedIndex==4?_tabbarSelected[4]:_tabbarImage[4]).toString();
    
    return Container(
      height: tabbarheight,
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[

          Expanded(//第一个按钮
            flex: 1,
            child: GestureDetector(
              onTapDown: (TapDownDetails details) => {
                print("1 button"),
                widget.callBackFun(0),
              },
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8,height: 26,left: 0,right: 0,
                      child: Image.asset(firstImage,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      top: 34,height: 20,left: 0,right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('首页',
                            style: TextStyle(
                              fontSize: 10
                            ),
                          )
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),

          Expanded(//第二个按钮
            flex: 1,
            child: GestureDetector(
              onTapDown: (TapDownDetails details) => {
                print("2 button"),
                widget.callBackFun(1),
              },
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8,height: 26,left: 0,right: 0,
                      child: Image.asset(secondImage,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      top: 34,height: 20,left: 0,right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('约课',
                            style: TextStyle(
                              fontSize: 10
                            ),
                          )
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),

          // Expanded(//第三个按钮
          //   flex: 1,
          //   child: GestureDetector(
          //     onTapDown: (TapDownDetails details) => {
          //       print("3 button"),
          //       widget.callBackFun(2),
          //     },
          //   ),
          // ),

          Expanded(//第四个按钮
            flex: 1,
            child: GestureDetector(
              onTapDown: (TapDownDetails details) => {
                print("4 button"),
                widget.callBackFun(3),
              },
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8,height: 26,left: 0,right: 0,
                      child: Image.asset(fourthImage,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      top: 34,height: 20,left: 0,right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('测评',
                            style: TextStyle(
                              fontSize: 10
                            ),
                          )
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),

          Expanded(//第五个按钮
            flex: 1,
            child: GestureDetector(
              onTapDown: (TapDownDetails details) => {
                print("5 button"),
                widget.callBackFun(4),
              },
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8,height: 26,left: 0,right: 0,
                      child: Image.asset(fivethImage,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      top: 34,height: 20,left: 0,right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('个人',
                            style: TextStyle(
                              fontSize: 10
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
  
}


