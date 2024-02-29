import 'package:flutter/material.dart';
import 'package:wan_android_flutter/AppConfig.dart';

///@author ： 于德海
///time ： 2024/2/29 16:43
///desc ：


class UserProvider extends ChangeNotifier{

  String useName = AppConfig.userName;
  String passWord = AppConfig.password;


  void updateUserInfo(String userName,String password){
    useName = userName;
    passWord = password;
    AppConfig.userName = userName;
    AppConfig.password = password;
    notifyListeners();
  }

}