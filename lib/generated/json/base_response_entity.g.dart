import 'package:wan_android_flutter/generated/json/base/json_convert_content.dart';
import 'package:wan_android_flutter/models/base_response_entity.dart';


BaseResponseEntity $BaseResponseEntityFromJson<D>(Map<String, dynamic> json) {
  final BaseResponseEntity baseResponseEntity = BaseResponseEntity();
  final D? data = jsonConvert.convert<D>(json['data']);
  if (data != null) {
    baseResponseEntity.data = data;
  }
  final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
  if (errorCode != null) {
    baseResponseEntity.errorCode = errorCode;
  }
  final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
  if (errorMsg != null) {
    baseResponseEntity.errorMsg = errorMsg;
  }
  return baseResponseEntity;
}

Map<String, dynamic> $BaseResponseEntityToJson(BaseResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.toJson();
  data['errorCode'] = entity.errorCode;
  data['errorMsg'] = entity.errorMsg;
  return data;
}

extension BaseResponseEntityExtension on BaseResponseEntity {

}