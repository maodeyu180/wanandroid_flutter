/// @author ： 于德海
/// time ： 2024/2/20 19:30
/// desc ：
import 'dart:convert';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:wan_android_flutter/net/wan_exception.dart';

import '../AppConfig.dart';
import '../common/common_utils.dart';
import '../models/base_response_entity.dart';
import 'custom_http_interceptor.dart';

class DioManager {
  static const tag = "DioHttpRequest";
  static final DioManager _instance = DioManager._internal();
  static late Dio _dio;

  static DioManager getIns() {
    return _instance;
  }

  DioManager._internal() {
    _dio = Dio();

    _dio.options.baseUrl = AppConfig.baseUrl;

    final cookieJar = CookieJar();
    _dio.interceptors.add(CookieManager(cookieJar));
    _dio.interceptors.add(HttpInterceptor());
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<T> _request<T>(String path, String method,
      {Map<String, dynamic>? param}) async {
    try {
      var options = Options(
          method: method, headers: {'Content-Type': 'application/json'});
      Response response;
      if (method == 'POST') {
        tagPrint(tag, "postParams = ${jsonEncode(param)}");
        response =
            await _dio.request(path, options: options, data: jsonEncode(param));
      } else {
        response =
            await _dio.request(path, options: options, queryParameters: param);
      }

      if (response.statusCode == 200) {
        BaseResponseEntity<T> responseData =
            BaseResponseEntity.fromJson(response.data);
        if (responseData.errorCode != 0) {
          throw WanException(responseData.errorCode, responseData.errorMsg);
        }
        if (T == String) {
          return (jsonEncode(response.data["data"]) as T);
        } else {
          return (responseData.data as T);
        }
      } else {
        throw WanException(response.statusCode, response.data["message"]);
      }
    } on DioException catch (e) {
      logE(tag, e.toString());
      WanException exception = WanException.fromDioError(e);
      logE(tag, exception.toString());
      throw exception;
    } on WanException catch (e) {
      logE(tag, e.toString());
      throw e;
    } catch (e) {
      logE(tag, e.toString());
      throw WanException(HttpErrorCode.Unknown, e.toString());
    }
  }

  Future<T> get<T>(String path, {Map<String, dynamic>? param}) async {
    return await _request<T>(path, "GET", param: param);
  }

  Future<T> post<T>(String path, {Map<String, dynamic>? param}) async {
    return await _request<T>(path, "POST", param: param);
  }
}
