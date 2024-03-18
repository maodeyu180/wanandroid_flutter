import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wan_android_flutter/AppConfig.dart';
import 'package:wan_android_flutter/common/common_utils.dart';

import '../models/collect_article_entity.dart';
import '../models/user_info_entity.dart';
import '../net/wan_apis.dart';
import '../net/wan_exception.dart';

///@author ： 于德海
///time ： 2024/2/29 16:34
///desc ：
///
///

class Global {
  static late SharedPreferences _preferences;
  static const _keyUsername = "key_username";
  static const _keyPassword = "_keyPassword";
  static const _keyColor = "_keyColor";

  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _preferences = await SharedPreferences.getInstance();
    AppConfig.userName = _preferences.getString(_keyUsername) ?? "";
    AppConfig.password = _preferences.getString(_keyPassword) ?? "";
    var saveColor = _preferences.getInt(_keyColor);
    if( saveColor != null){
      AppConfig.themeColor = Color(saveColor);
    }
    if (AppConfig.userName.isNotEmpty && AppConfig.password.isNotEmpty) {
      try {
        UserInfoEntity infoEntity =
            await WanApis.login(AppConfig.userName, AppConfig.password);
        AppConfig.userInfo = infoEntity;
        CollectArticleEntity collectEntity =  await WanApis.collectList(0);
        for(CollectArticleDatas data in collectEntity.datas!){
          AppConfig.collectArticleIdList.add(data.id!);
        }
      } catch (e) {
        if (e is WanException) {
          tagPrint("Global", "loginError ; ");
          exitLogin();
        }
      }
    } else {
      exitLogin();
    }
  }


  static void exitLogin(){
    saveUserInfo("", "");
    AppConfig.userName = "";
    AppConfig.password = "";
  }

  static void saveUserInfo(String username, String password) {
    _preferences.setString(_keyUsername, username);
    _preferences.setString(_keyPassword, password);
  }

  static void saveThemeColor(Color color){
    _preferences.setInt(_keyColor, color.value);
  }
}
