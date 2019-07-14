
import 'package:flutter/material.dart';

class AdapterViewUntil {

  @protected
  static AdapterViewUntil _singleAdapterView;
  
  //高度比例
  double heightPresent = 1.0;

  //宽度比例
  double widthPresent = 1.0;

  static AdapterViewUntil shareInstance(BuildContext context) {
    
    if(_singleAdapterView == null) {
      double windowHeight = MediaQuery.of(context).size.height;
      double windowWidth = MediaQuery.of(context).size.width;

      _singleAdapterView = new AdapterViewUntil();
      String heightTemp = (windowHeight/658).toStringAsFixed(1);
      String widthTemp = (windowWidth/320).toStringAsFixed(1);
      _singleAdapterView.heightPresent = double.parse(heightTemp);
      _singleAdapterView.widthPresent = double.parse(widthTemp);
    }
    return _singleAdapterView;
  }

}

double getAdapterHeight(double value) {
  return value * AdapterViewUntil.shareInstance(null).heightPresent;
}

double getAdapterWidth(double value) {
  return value * AdapterViewUntil.shareInstance(null).widthPresent;
}


