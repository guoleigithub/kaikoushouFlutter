import 'dart:async';

import 'package:flutter/material.dart';
import '../../unitl/defineValue.dart';

class TestRanking extends Dialog {

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () => {
          Navigator.pop(context),
      },
      child: Material(
        type: MaterialType.transparency,
        child: new Center(
          child: Container(
              width: getAdapterHeight(200),
              height: getAdapterHeight(80),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text("测试平均在校区排名10",style: TextStyle(fontSize: getAdapterHeight(12)),),
              ),
            ),
        ),
      ),
    );

    
  }



}
