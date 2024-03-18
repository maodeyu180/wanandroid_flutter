import 'package:flutter/material.dart';
import 'package:wan_android_flutter/AppConfig.dart';
import 'package:wan_android_flutter/common/wan_global.dart';

///@author ： 于德海
///time ： 2024/3/7 18:02
///desc ：
///
///

class ThemeProvider extends ChangeNotifier{
  Color themeColor =  AppConfig.themeColor;

  void changeThemeColor( Color newColor){
    themeColor = newColor;
    Global.saveThemeColor(newColor);
    notifyListeners();
  }

}