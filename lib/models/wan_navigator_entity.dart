import 'package:wan_android_flutter/generated/json/base/json_field.dart';
import 'package:wan_android_flutter/generated/json/wan_navigator_entity.g.dart';
import 'dart:convert';
export 'package:wan_android_flutter/generated/json/wan_navigator_entity.g.dart';

@JsonSerializable()
class WanNavigatorEntity {
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
	dynamic shareDate;
	String? shareUser = '';
	int? superChapterId = 0;
	String? superChapterName = '';
	List<dynamic>? tags = [];
	String? title = '';
	int? type = 0;
	int? userId = 0;
	int? visible = 0;
	int? zan = 0;

	WanNavigatorEntity();

	factory WanNavigatorEntity.fromJson(Map<String, dynamic> json) => $WanNavigatorEntityFromJson(json);

	Map<String, dynamic> toJson() => $WanNavigatorEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}