import 'package:flutter/material.dart';
import 'package:wan_android_flutter/AppConfig.dart';
import 'package:wan_android_flutter/common/wan_global.dart';

///@author ： 于德海
///time ： 2024/2/29 16:43
///desc ：


class UserProvider extends ChangeNotifier{

  String userName = AppConfig.userName;
  String passWord = AppConfig.password;


  void updateUserInfo(String userName,String passWord){
    this.userName = userName;
    this.passWord = passWord;
    AppConfig.userName = userName;
    AppConfig.password = passWord;
    Global.saveUserInfo(userName, passWord);
    notifyListeners();
  }

}