import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/home_article_list_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/home_article_list_entity.g.dart';

@JsonSerializable()
class HomeArticleListEntity {
	int? curPage = 0;
	List<HomeArticleListDatas>? datas = [];
	int? offset = 0;
	bool? over = false;
	int? pageCount = 0;
	int? size = 0;
	int? total = 0;

	HomeArticleListEntity();

	factory HomeArticleListEntity.fromJson(Map<String, dynamic> json) => $HomeArticleListEntityFromJson(json);

	Map<String, dynamic> toJson() => $HomeArticleListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeArticleListDatas {
	bool? adminAdd = false;
	String? apkLink = '';
	int? audit = 0;
	String? author = '';
	bool? canEdit = false;
	int? chapterId = 0;
	String? chapterName = '';
	bool? collect = false;
	int? courseId = 0;
	String? desc = '';
	String? descMd = '';
	String? envelopePic = '';
	bool? fresh = false;
	String? host = '';
	int? id = 0;
	bool? isAdminAdd = false;
	String? link = '';
	String? niceDate = '';
	String? niceShareDate = '';
	String? origin = '';
	String? prefix = '';
	String? projectLink = '';
	int? publishTime = 0;
	int? realSuperChapterId = 0;
	int? selfVisible = 0;
	int? shareDate = 0;
	String? shareUser = '';
	int? superChapterId = 0;
	String? superChapterName = '';
	List<HomeArticleListDatasTags>? tags = [];
	String? title = '';
	int? type = 0;
	int? userId = 0;
	int? visible = 0;
	int? zan = 0;

	HomeArticleListDatas();

	factory HomeArticleListDatas.fromJson(Map<String, dynamic> json) => $HomeArticleListDatasFromJson(json);

	Map<String, dynamic> toJson() => $HomeArticleListDatasToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class HomeArticleListDatasTags {
	String? name = '';
	String? url = '';

	HomeArticleListDatasTags();

	factory HomeArticleListDatasTags.fromJson(Map<String, dynamic> json) => $HomeArticleListDatasTagsFromJson(json);

	Map<String, dynamic> toJson() => $HomeArticleListDatasTagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}