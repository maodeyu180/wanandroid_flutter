
import 'package:dio/dio.dart';

class HttpErrorCode{
  static const int Unknown = -1;
  static const int RequestCancel = 1000;
  static const int ConnectTimeout = 1001;
  static const int SendTimeout = 1002;
  static const int ReceiveTimeout = 1003;
  static const int BadResponse = 1004;
  static const int ConnectError = 1005;
  static const int ParseError = 1006;

}

class WanException implements Exception{
  static const unknownException = "未知错误";
  final String? message;
  final int? code;
  WanException([this.code, this.message]);



  factory WanException.fromDioError(DioException error){
    switch (error.type) {
      case DioExceptionType.cancel:
        return WanException(HttpErrorCode.RequestCancel, "请求取消");
      case DioExceptionType.connectionTimeout:
        return WanException(HttpErrorCode.ConnectTimeout, "连接超时");
      case DioExceptionType.sendTimeout:
        return WanException(HttpErrorCode.SendTimeout, "请求超时");
      case DioExceptionType.receiveTimeout:
        return WanException(HttpErrorCode.ReceiveTimeout, "响应超时");
      case DioExceptionType.badResponse:
        return WanException(HttpErrorCode.BadResponse,"${error.message}");
      case DioExceptionType.connectionError:
        return WanException(HttpErrorCode.ConnectError,"${error.message}");
      default:
      try {
        /// http错误码带业务错误信息
        int? errCode = error.response?.statusCode;
        switch (errCode) {
          case 400:
            return WanException(errCode, "请求语法错误");
          case 401:
            return WanException(errCode!, "没有权限");
          case 403:
            return WanException(errCode!, "服务器拒绝执行");
          case 404:
            return WanException(errCode!, "无法连接服务器");
          case 405:
            return WanException(errCode!, "请求方法被禁止");
          case 500:
            return WanException(errCode!, "服务器内部错误");
          case 502:
            return WanException(errCode!, "无效的请求");
          case 503:
            return WanException(errCode!, "服务器异常");
          case 505:
            return WanException(errCode!, "不支持HTTP协议请求");
          default:
            return WanException(
                errCode, error.response?.statusMessage ?? '未知错误');
        }

      } on Exception {
        return WanException(-1, unknownException);
      }
    }
  }
}