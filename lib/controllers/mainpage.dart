import 'package:flutter/material.dart';
import '../views/globalViews/navigationBar.dart';
import '../unitl/defineValue.dart';

class MainPageView extends StatefulWidget {

  @override
  _MainPageViewState createState() => new _MainPageViewState();

}

class _MainPageViewState extends State<MainPageView> {

  List _teacherNames = ['assets/Robert.png','assets/Mark.png','assets/Richie.png'];
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CustomBarView(),
            Expanded(
              child: ListView(
                shrinkWrap: true, 
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  //第一栏
                  Container(
                    height: getAdapterHeight(80),
                    child: Stack(
                      children: <Widget>[
                        Image.asset('assets/homepage_topbg.png',
                          fit: BoxFit.fill,
                          height: getAdapterHeight(80),
                        ),

                        Positioned(
                          left: getAdapterHeight(10),
                          height: getAdapterHeight(80),
                          width: getAdapterHeight(90),
                          child: Image.asset('assets/homepage_top_left.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),

                        Positioned(
                          left: MediaQuery.of(context).size.width-getAdapterHeight(140)-30,
                          width: getAdapterHeight(140),
                          height: getAdapterHeight(80),
                          child: Image.asset('assets/homepage_noclass.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //分割线
                  Container(
                    height: 10,
                  ),

                  //每日一练
                  Container(
                    height: getAdapterHeight(160),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          height: getAdapterHeight(160),
                          width: MediaQuery.of(context).size.width-20,
                          child: Image.asset('assets/homepage_practice_3.png',
                            fit: BoxFit.fill,
                          ),
                        ),

                        Positioned(
                          left: getAdapterHeight(50),
                          right: getAdapterHeight(50),
                          top: getAdapterHeight(80),
                          bottom: getAdapterHeight(10),
                          child: Text('Hello, my dear friends. This is Rob speaking from Xuebang online in Beijing',
                            style: TextStyle(
                              fontSize: getAdapterHeight(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //视听学堂
                  Container(
                    height: getAdapterHeight(220),
                    child: Stack(
                      children: <Widget>[

                        Positioned(
                          height: getAdapterHeight(30),
                          width: (MediaQuery.of(context).size.width-20)/2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('视听学堂',
                                  style: TextStyle(
                                    fontSize: getAdapterHeight(12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          right: 0,
                          height: getAdapterHeight(30),
                          width: (MediaQuery.of(context).size.width-20)/2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text('更多',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: getAdapterHeight(12),
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          top: getAdapterHeight(30),
                          width: MediaQuery.of(context).size.width-20,
                          height: getAdapterHeight(150),
                          child: Image.asset('assets/homepage_audio_bg.png',
                            fit: BoxFit.fill,
                          ),
                        ),

                        Positioned(
                          top: getAdapterHeight(180),
                          height: getAdapterHeight(30),
                          width: (MediaQuery.of(context).size.width-20)/2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Mother‘s day',
                                  style: TextStyle(
                                    fontSize: getAdapterHeight(12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          top: getAdapterHeight(180),
                          right: 0,
                          height: getAdapterHeight(30),
                          width: (MediaQuery.of(context).size.width-20)/2,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text('57次浏览 2次喜欢',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: getAdapterHeight(8),
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  
                  //外教推荐
                  Container(
                    height: getAdapterHeight(250),
                    child: Stack(
                      children: <Widget>[

                        Positioned(
                          height: getAdapterHeight(30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('外教推荐',
                                  style: TextStyle(
                                    fontSize: getAdapterHeight(12),
                                  ),
                                ),
                            ],
                          ),
                        ),

                        Positioned(
                          top: getAdapterHeight(30),
                          height: getAdapterHeight(220),
                          width: MediaQuery.of(context).size.width-20,
                          child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemExtent: getAdapterHeight(280), //强制高度为50.0
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      child: Stack(
                                        children: <Widget>[

                                          Positioned(
                                            left: 0,
                                            right: getAdapterHeight(10),
                                            height: getAdapterHeight(200),
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8),
                                                boxShadow: [ //阴影
                                                  BoxShadow(
                                                    color:Colors.black54,
                                                    offset: Offset(2.0,2.0),
                                                    blurRadius: 4.0
                                                    )
                                                ],
                                              ),
                                              child: Container(
                                              ),
                                            ),
                                          ),

                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            right: getAdapterHeight(10),
                                            height: getAdapterHeight(150),
                                            child: ClipRRect(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                                                      child: Image.asset(_teacherNames[index].toString(), 
                                                        fit: BoxFit.fill, 
                                                      ),
                                            ),
                                          ),

                                          Positioned(
                                            left: 10,
                                            top: getAdapterHeight(150),
                                            height: getAdapterHeight(50),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text('Robert'),
                                                Text('Hi，想和我一起快乐学英语',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),


                                        ],
                                      ),
                                    );
                                  }
                          ),
                        ),



                      ],
                    ),
                  ),


                  ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
  
}





