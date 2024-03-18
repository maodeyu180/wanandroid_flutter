

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wan_android_flutter/models/user_info_entity.dart';

class AppConfig{
  static const String baseUrl = "https://www.wanandroid.com";

  static UserInfoEntity userInfo = UserInfoEntity();

  static Color themeColor = Colors.deepPurple;
  static List<int> collectArticleIdList = [];
  static String userName = "";
  static String password = "";
}