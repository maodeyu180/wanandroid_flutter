import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/base_response_entity.g.dart';
import 'dart:convert';

import '../generated/json/base/json_convert_content.dart';
export 'package:wan_android_flutter/generated/json/base_response_entity.g.dart';

@JsonSerializable()
class BaseResponseEntity<D> {
	D? data;
	int? errorCode = 0;
	String? errorMsg = '';

	BaseResponseEntity();

	BaseResponseEntity.fromJson(Map<String, dynamic> json){
		if(json['data'] != null){
			data = JsonConvert.fromJsonAsT<D>(json['data']);
		}
		errorCode = json['errorCode'];
		errorMsg = json['errorMsg'];
	}
	Map<String, dynamic> toJson() => $BaseResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

