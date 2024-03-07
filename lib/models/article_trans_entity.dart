import 'dart:core';

import '../generated/json/base/json_field.dart';

///@author ： 于德海
///time ： 2024/3/7 16:05
///desc ：
///
///

@JsonSerializable()
class ArticleTransEntity{

  String title;
  String url;
  int id ;

  ArticleTransEntity(this.id, this.title, this.url);
}