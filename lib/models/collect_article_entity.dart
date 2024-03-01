import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/collect_article_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/collect_article_entity.g.dart';

@JsonSerializable()
class CollectArticleEntity {
	int? curPage = 0;
	List<CollectArticleDatas>? datas = [];
	int? offset = 0;
	bool? over = false;
	int? pageCount = 0;
	int? size = 0;
	int? total = 0;

	CollectArticleEntity();

	factory CollectArticleEntity.fromJson(Map<String, dynamic> json) => $CollectArticleEntityFromJson(json);

	Map<String, dynamic> toJson() => $CollectArticleEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CollectArticleDatas {
	String? author = '';
	int? chapterId = 0;
	String? chapterName = '';
	int? courseId = 0;
	String? desc = '';
	String? envelopePic = '';
	int? id = 0;
	String? link = '';
	String? niceDate = '';
	String? origin = '';
	int? originId = 0;
	int? publishTime = 0;
	String? title = '';
	int? userId = 0;
	int? visible = 0;
	int? zan = 0;

	CollectArticleDatas();

	factory CollectArticleDatas.fromJson(Map<String, dynamic> json) => $CollectArticleDatasFromJson(json);

	Map<String, dynamic> toJson() => $CollectArticleDatasToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}