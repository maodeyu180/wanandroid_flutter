


import 'package:wan_android_flutter/AppConfig.dart';
import 'package:wan_android_flutter/common/common_utils.dart';
import 'package:wan_android_flutter/models/article_classify_entity.dart';
import 'package:wan_android_flutter/models/collect_article_entity.dart';
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
    var result =  await DioManager.getIns().post<UserInfoEntity>('/user/login?username=$username&password=$password');
    var cookies = await DioManager.getIns().loadCookie( "${AppConfig.baseUrl}/user/login?username=$username&password=$password");
    tagPrint(DioManager.tag, "cookies = $cookies" );
    return result;
  }


  static Future<List<ArticleClassifyEntity>> articleClassify() async{
    return await DioManager.getIns().get('/tree/json');
  }

  static Future<CollectArticleEntity> collectList(int pageIndex) async{
    return await DioManager.getIns().get('/lg/collect/list/$pageIndex/json');
  }

  static Future<dynamic> collect(int id) async{
    return await DioManager.getIns().post('/lg/collect/$id/json');
  }


  static Future<dynamic> unCollect(int id) async{
    return await DioManager.getIns().post('/lg/uncollect/$id/json');
  }

}