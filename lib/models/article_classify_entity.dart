import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/article_classify_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/article_classify_entity.g.dart';

@JsonSerializable()
class ArticleClassifyEntity {
	List<dynamic>? articleList = [];
	String? author = '';
	List<ArticleClassifyChildren>? children = [];
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

	ArticleClassifyEntity();

	factory ArticleClassifyEntity.fromJson(Map<String, dynamic> json) => $ArticleClassifyEntityFromJson(json);

	Map<String, dynamic> toJson() => $ArticleClassifyEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArticleClassifyChildren {
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

	ArticleClassifyChildren();

	factory ArticleClassifyChildren.fromJson(Map<String, dynamic> json) => $ArticleClassifyChildrenFromJson(json);

	Map<String, dynamic> toJson() => $ArticleClassifyChildrenToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}