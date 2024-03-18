import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/project_classify_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/project_classify_entity.g.dart';

@JsonSerializable()
class ProjectClassifyEntity {
	List<dynamic>? articleList = [];
	String? author = '';
	List<dynamic>? children = [];
	int? courseId = 0;
	String? cover = '';
	String? desc = '';
	int? id = 0;
	String? lisense = '';
	String? lisenseLink = '';
	String? name = '';
	int? order = 0;
	int? parentChapterId = 0;
	int? type = 0;
	bool? userControlSetTop = false;
	int? visible = 0;

	ProjectClassifyEntity();

	factory ProjectClassifyEntity.fromJson(Map<String, dynamic> json) => $ProjectClassifyEntityFromJson(json);

	Map<String, dynamic> toJson() => $ProjectClassifyEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}