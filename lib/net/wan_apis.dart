


import 'package:wan_android_flutter/models/article_classify_entity.dart';
import 'package:wan_android_flutter/models/user_info_entity.dart';
import 'package:wan_android_flutter/net/wan_dio_manager.dart';

import '../models/banner_home_entity.dart';
import '../models/home_article_list_entity.dart';

class WanApis{

  static Future<List<BannerHomeEntity>> bannerHome()async{
    return await DioManager.getIns().get('/banner/json');
  }


  static Future<HomeArticleListEntity> homeList(int pageIndex)async{
    Map<String,dynamic> params = {};
    params["page_size"] = 20;
    return await DioManager.getIns().get('/article/list/$pageIndex/json');
  }


  static Future<UserInfoEntity> login(String username,String password) async{
    return await DioManager.getIns().post('/user/login?username=$username&password=$password');
  }


  static Future<List<ArticleClassifyEntity>> articleClassify() async{
    return await DioManager.getIns().get('/tree/json');
  }

}