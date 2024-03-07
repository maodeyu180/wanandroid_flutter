import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wan_android_flutter/routes/classify_detail_page.dart';
import 'package:wan_android_flutter/routes/collect_page.dart';
import 'package:wan_android_flutter/routes/login_page.dart';

import '../main.dart';
import '../routes/article_detail_page.dart';


///@author ： 于德海
///time ： 2024/2/22 11:37
///desc ：


class RouteName{
  static const String home = "/";
  static const String detail = "/detail";
  static const String login = "/login";
  static const String collect = "/collect";
  static const String classifyDetail = "/classifyDetail";
}

Map<String,WidgetBuilder> globalRoutes = {
  RouteName.home: (context) => MyHomePage(),
  RouteName.detail: (context) => ArticleDetailPage(),
  RouteName.login: (context) => LoginPage(),
  RouteName.collect: (context) => CollectPage(),
  RouteName.classifyDetail: (context) => ClassifyDetailPage(ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>),

};