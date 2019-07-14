import 'package:flutter/material.dart';
import 'package:kaikoushuoflutter/controllers/evaluationpage.dart';
import 'views/globalViews/tabbar.dart';
import 'unitl/defineValue.dart';

import 'controllers/mainpage.dart';
import 'controllers/reservationpage.dart';
import 'controllers/centerpage.dart';
import 'controllers/reservationpage.dart';
import 'controllers/personalpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AdapterViewUntil.shareInstance(context);

    if (_currentIndex == 1) {
      return Scaffold(
      body: Column(
        children: <Widget>[
          ReservationPageView(),
          CustomTabbarView(selectedIndex: _currentIndex,callBackFun: (selectedIndex){
            this.setState((){
              _currentIndex = selectedIndex;
            });
          },),
        ],
      ),
    );
    
    }else if(_currentIndex == 2) {
      return Scaffold(
      body: Column(
        children: <Widget>[
          CenterView(),
          CustomTabbarView(selectedIndex: _currentIndex,callBackFun: (selectedIndex){
            this.setState((){
              _currentIndex = selectedIndex;
            });
          },),
        ],
      ),
    );

    }else if(_currentIndex == 3) {
      return Scaffold(
      body: Column(
        children: <Widget>[
          EvaluationView(),
          CustomTabbarView(selectedIndex: _currentIndex,callBackFun: (selectedIndex){
            this.setState((){
              _currentIndex = selectedIndex;
            });
          },),
        ],
      ),
    );

    }else if(_currentIndex == 4) {
      return Scaffold(
      body: Column(
        children: <Widget>[
          PersonalView(),
          CustomTabbarView(selectedIndex: _currentIndex,callBackFun: (selectedIndex){
            this.setState((){
              _currentIndex = selectedIndex;
            });
          },),
        ],
      ),
    );

    }
    return Scaffold(
      body: Column(
        children: <Widget>[
          MainPageView(),
          CustomTabbarView(selectedIndex: _currentIndex,callBackFun: (selectedIndex){
            this.setState((){
              _currentIndex = selectedIndex;
            });
          },),
        ],
      ),
    );

  }
}
