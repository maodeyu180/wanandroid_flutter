import 'package:flutter/material.dart';
import 'package:wan_android_flutter/AppConfig.dart';

///@author ： 于德海
///time ： 2024/3/1 17:48
///desc ：


class CollectActionProvider extends ChangeNotifier{

  bool action = false;
  int articleId = -1;

  void updateAction(int articleId, bool action){
    this.articleId = articleId;
    this.action = action;
    if(action){
      AppConfig.collectArticleIdList.add(articleId);
    }else{
      AppConfig.collectArticleIdList.remove(articleId);
    }
    notifyListeners();
  }


}