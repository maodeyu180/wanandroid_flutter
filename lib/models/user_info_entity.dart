import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/user_info_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/user_info_entity.g.dart';

@JsonSerializable()
class UserInfoEntity {
	bool? admin = false;
	List<dynamic>? chapterTops = [];
	int? coinCount = 0;
	List<int>? collectIds = [];
	String? email = '';
	String? icon = '';
	int? id = 0;
	String? nickname = '';
	String? password = '';
	String? publicName = '';
	String? token = '';
	int? type = 0;
	String? username = '';

	UserInfoEntity();

	factory UserInfoEntity.fromJson(Map<String, dynamic> json) => $UserInfoEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserInfoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}