import 'package:flutter/material.dart';

///@author ： 于德海
///time ： 2024/3/1 17:48
///desc ：


class CollectActionProvider extends ChangeNotifier{

  bool action = false;
  int articleId = -1;

  void updateAction(int articleId, bool action){
    this.articleId = articleId;
    this.action = action;
    notifyListeners();
  }


}