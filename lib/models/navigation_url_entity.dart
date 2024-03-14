import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/navigation_url_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/navigation_url_entity.g.dart';

@JsonSerializable()
class NavigationUrlEntity {
	List<NavigationUrlArticles>? articles = [];
	double? cid;
	String? name = '';

	NavigationUrlEntity();

	factory NavigationUrlEntity.fromJson(Map<String, dynamic> json) => $NavigationUrlEntityFromJson(json);

	Map<String, dynamic> toJson() => $NavigationUrlEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NavigationUrlArticles {
	bool? adminAdd = false;
	String? apkLink = '';
	double? audit;
	String? author = '';
	bool? canEdit = false;
	double? chapterId;
	String? chapterName = '';
	bool? collect = false;
	double? courseId;
	String? desc = '';
	String? descMd = '';
	String? envelopePic = '';
	bool? fresh = false;
	String? host = '';
	double? id;
	bool? isAdminAdd = false;
	String? link = '';
	String? niceDate = '';
	String? niceShareDate = '';
	String? origin = '';
	String? prefix = '';
	String? projectLink = '';
	double? publishTime;
	double? realSuperChapterId;
	double? selfVisible;
	dynamic shareDate;
	String? shareUser = '';
	double? superChapterId;
	String? superChapterName = '';
	List<dynamic>? tags = [];
	String? title = '';
	double? type;
	double? userId;
	double? visible;
	double? zan;

	NavigationUrlArticles();

	factory NavigationUrlArticles.fromJson(Map<String, dynamic> json) => $NavigationUrlArticlesFromJson(json);

	Map<String, dynamic> toJson() => $NavigationUrlArticlesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}