

import 'package:dio/dio.dart';
import 'package:wan_android_flutter/net/wan_dio_manager.dart';

import '../common/common_utils.dart';

class HttpInterceptor extends Interceptor{
  late DateTime startTime;
  late DateTime endTime;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    startTime = DateTime.now();
    tagPrint(DioManager.tag,"---- Request Start ----");
    tagPrint(DioManager.tag, 'Request Url : ${options.baseUrl}${options.path}' );
    tagPrint(DioManager.tag, "Request Method : ${options.method}");
    tagPrint(DioManager.tag, "Request Header : ${options.headers}");
    tagPrint(DioManager.tag, "Request queryParameters: ${options.queryParameters}");
    tagPrint(DioManager.tag, "Request data: ${options.data}");
   return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {

    endTime = DateTime.now();
    int duration = endTime.difference(startTime).inMilliseconds;
    tagPrint(DioManager.tag,"---- Request End ---- useTime = $duration  ms  (${response.realUri})");
    tagPrint(DioManager.tag, "Response Data : ${response.data}");
   return handler.next(response);
  }

}