import 'package:flutter/material.dart';

import '../main.dart';
import '../routes/article_detail_page.dart';


///@author ： 于德海
///time ： 2024/2/22 11:37
///desc ：


class RouteName{
  static const String home = "/";
  static const String detail = "/detail";
}

Map<String,WidgetBuilder> globalRoutes = {
  RouteName.home: (context) => MyHomePage(),
  RouteName.detail: (context) => ArticleDetailPage(),

};