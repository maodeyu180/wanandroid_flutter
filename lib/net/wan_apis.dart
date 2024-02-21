


import 'package:wan_android_flutter/net/wan_dio_manager.dart';

import '../models/banner_home_entity.dart';
import '../models/home_article_list_entity.dart';

class WanApis{

  static void bannerHome(OnData<List<BannerHomeEntity>> dataCall, OnError errorCall)async{
    DioManager.getIns().get('/banner/json', dataCall: dataCall, errorCall:  errorCall);
  }


  static void homeList(int pageIndex, OnData<HomeArticleListEntity> dataCall, OnError errorCall)async{
    Map<String,dynamic> params = {};
    params["page_size"] = 20;
    DioManager.getIns().get('/article/list/$pageIndex/json', dataCall: dataCall, errorCall:  errorCall);
  }
}