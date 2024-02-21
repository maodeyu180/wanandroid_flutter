import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/banner_home_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/banner_home_entity.g.dart';

@JsonSerializable()
class BannerHomeEntity {
	String? desc = '';
	double? id;
	String? imagePath = '';
	double? isVisible;
	double? order;
	String? title = '';
	double? type;
	String? url = '';

	BannerHomeEntity();

	factory BannerHomeEntity.fromJson(Map<String, dynamic> json) => $BannerHomeEntityFromJson(json);

	Map<String, dynamic> toJson() => $BannerHomeEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}