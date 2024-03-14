import 'package:flutter/material.dart';

///@author ： 于德海
///time ： 2024/3/7 18:02
///desc ：
///
///

class ThemeProvider extends ChangeNotifier{
  Color themeColor =  Colors.deepPurple;



  void changeThemeColor( Color newColor){
    themeColor = newColor;
    notifyListeners();
  }

}