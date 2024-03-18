import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/project_list_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/project_list_entity.g.dart';

@JsonSerializable()
class ProjectListEntity {
	int? curPage = 0;
	List<ProjectListDatas>? datas = [];
	int? offset = 0;
	bool? over = false;
	int? pageCount = 0;
	int? size = 0;
	int? total = 0;

	ProjectListEntity();

	factory ProjectListEntity.fromJson(Map<String, dynamic> json) => $ProjectListEntityFromJson(json);

	Map<String, dynamic> toJson() => $ProjectListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProjectListDatas {
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
	List<ProjectListDatasTags>? tags = [];
	String? title = '';
	int? type = 0;
	int? userId = 0;
	int? visible = 0;
	int? zan = 0;

	ProjectListDatas();

	factory ProjectListDatas.fromJson(Map<String, dynamic> json) => $ProjectListDatasFromJson(json);

	Map<String, dynamic> toJson() => $ProjectListDatasToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ProjectListDatasTags {
	String? name = '';
	String? url = '';

	ProjectListDatasTags();

	factory ProjectListDatasTags.fromJson(Map<String, dynamic> json) => $ProjectListDatasTagsFromJson(json);

	Map<String, dynamic> toJson() => $ProjectListDatasTagsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}