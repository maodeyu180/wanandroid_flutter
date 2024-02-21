
/// @author ： 于德海
/// time ： 2024/2/20 19:30
/// desc ：
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wan_android_flutter/net/wan_exception.dart';

import '../AppConfig.dart';
import '../common/common_utils.dart';
import '../models/base_response_entity.dart';
import 'custom_http_interceptor.dart';

typedef OnError = void Function(WanException e);
typedef OnData<T> = void Function(T data);

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
    _dio.interceptors.add(HttpInterceptor());
    // _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  void _request<T>(String path, String method,
      {Map<String, dynamic>? param,
      OnData<T>? dataCall,
      OnError? errorCall}) async {
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

      if (dataCall != null) {
        if (response.statusCode == 200) {
          BaseResponseEntity<T> responseData =
              BaseResponseEntity.fromJson(response.data);
          if (responseData.errorCode != 0) {
            throw WanException(responseData.errorCode, responseData.errorMsg);
          }
          if(T == String){
            dataCall(jsonEncode(response.data["data"]) as T);
          }else{
            dataCall(responseData.data as T);
          }
        } else {
          throw WanException(response.statusCode, response.data["message"]);
        }
      }
    } on DioException catch (e) {
      logE(tag, e.toString());
      WanException exception = WanException.fromDioError(e);
      logE(tag, exception.toString());
      if (errorCall != null) {
        errorCall(exception);
      }
    } on WanException catch (e) {
      logE(tag, e.toString());
      if (errorCall != null) {
        errorCall(e);
      }
    }catch(e){
      if (errorCall != null) {
        errorCall(WanException(HttpErrorCode.Unknown, e.toString()));
      }
    }
  }

  void get<T>(String path,
      {Map<String, dynamic>? param,OnData<T>? dataCall, OnError? errorCall}) async {
    _request<T>(path, "GET",
        dataCall: dataCall, param: param, errorCall: errorCall);
  }

  void post<T>(String path,
      {Map<String, dynamic>? param,OnData<T>? dataCall, OnError? errorCall}) async {
    _request<T>(path, "POST",
        param: param, dataCall: dataCall, errorCall: errorCall);
  }
}
