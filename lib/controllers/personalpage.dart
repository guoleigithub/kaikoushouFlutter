import 'package:flutter/material.dart';
import '../views/globalViews/navigationBar.dart';
import '../unitl/defineValue.dart';

import '../views/globalAlert/mydialog.dart';
// showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return new LoadingDialog();
//                   },
//                 ),

class PersonalView extends StatefulWidget {

  @override
  _PersonalViewState createState() => new _PersonalViewState();
  
}

class _PersonalViewState extends State<PersonalView> {

  GestureTapCallback rankViewAction() {

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CustomBarView(index: 4,),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    
                    //头像
                    Container(
                      height: getAdapterHeight(100),
                      color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 10,top: getAdapterHeight(20),
                            child: Icon(Icons.people,size: getAdapterHeight(60),),
                          ),
                          Positioned(
                            left: getAdapterHeight(60)+20,top: 0,bottom: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("XXX",style: TextStyle(fontSize: getAdapterHeight(16)),)
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,top: 0,bottom: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.arrow_right,size: getAdapterHeight(30)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //上课数量
                    Container(
                      height: getAdapterHeight(80),
                      color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 0,top: 0,
                            width: MediaQuery.of(context).size.width/2,
                            height: getAdapterHeight(40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1",style: TextStyle(fontSize: getAdapterHeight(14)),)
                              ],
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width/2,top: 0,
                            width: MediaQuery.of(context).size.width/2,
                            height: getAdapterHeight(40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("0",style: TextStyle(fontSize: getAdapterHeight(14)),)
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,top: getAdapterHeight(40),
                            width: MediaQuery.of(context).size.width/2,
                            height: getAdapterHeight(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("累计上课数量",style: TextStyle(fontSize: getAdapterHeight(14)),),
                              ],
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width/2,top: getAdapterHeight(40),
                            width: MediaQuery.of(context).size.width/2,
                            height: getAdapterHeight(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("累计做题数量",style: TextStyle(fontSize: getAdapterHeight(14)),),
                              ],
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width/2,top: getAdapterHeight(20),
                            width: 0.5,
                            height: getAdapterHeight(40),
                            child: Container(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //线
                    Container(
                      color: Colors.grey,
                      height: 5,
                    ),

                    //我的学习成就
                    Container(
                      color: Colors.white,
                      height: getAdapterHeight(40),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 10,top: getAdapterHeight(5),
                            child: Icon(Icons.archive,size: getAdapterHeight(30),),
                          ),
                          Positioned(
                            left: 20+getAdapterHeight(30),top: 0,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("我的学习成就",style: TextStyle(fontSize: getAdapterHeight(12)),)
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,top: 0,bottom: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.arrow_right,size: getAdapterHeight(30)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //线
                    Container(
                      color: Colors.grey,
                      height: 1,
                    ),

                    //我的测试排名
                    GestureDetector(
                      onTap: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return TestRanking();
                          }
                        ),
                      },
                      child: Container(
                      color: Colors.white,
                      height: getAdapterHeight(40),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 10,top: getAdapterHeight(5),
                            child: Icon(Icons.receipt,size: getAdapterHeight(30),),
                          ),
                          Positioned(
                            left: 20+getAdapterHeight(30),top: 0,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("我的测试排名",style: TextStyle(fontSize: getAdapterHeight(12)),)
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,top: 0,bottom: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.arrow_right,size: getAdapterHeight(30)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    
                    
                    //线
                    Container(
                      color: Colors.grey,
                      height: 1,
                    ),
                    
                    //设置
                    Container(
                      color: Colors.white,
                      height: getAdapterHeight(40),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 10,top: getAdapterHeight(5),
                            child: Icon(Icons.settings,size: getAdapterHeight(30),),
                          ),
                          Positioned(
                            left: 20+getAdapterHeight(30),top: 0,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("设置",style: TextStyle(fontSize: getAdapterHeight(12)),)
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,top: 0,bottom: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.arrow_right,size: getAdapterHeight(30)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //线
                    Container(
                      color: Colors.grey,
                      height: 1,
                    ),

                    //热线
                    Container(
                      color: Colors.white,
                      height: getAdapterHeight(40),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 10,top: getAdapterHeight(5),
                            child: Icon(Icons.phone,size: getAdapterHeight(30),),
                          ),
                          Positioned(
                            left: 20+getAdapterHeight(30),top: 0,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("客服热线",style: TextStyle(fontSize: getAdapterHeight(12)),)
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,top: 0,bottom: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.arrow_right,size: getAdapterHeight(30)),
                              ],
                            ),
                          ),
                          Positioned(
                            right: getAdapterHeight(30)+20,
                            top: 0,bottom: 0,width: 200,
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Text("13011111111"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //线
                    Container(
                      color: Colors.grey,
                      height: 1,
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



