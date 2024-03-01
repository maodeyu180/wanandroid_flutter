import 'package:wan_android_flutter/generated/json/base/json_convert_content.dart';
import 'package:wan_android_flutter/models/collect_article_entity.dart';

CollectArticleEntity $CollectArticleEntityFromJson(Map<String, dynamic> json) {
  final CollectArticleEntity collectArticleEntity = CollectArticleEntity();
  final int? curPage = jsonConvert.convert<int>(json['curPage']);
  if (curPage != null) {
    collectArticleEntity.curPage = curPage;
  }
  final List<CollectArticleDatas>? datas = (json['datas'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<CollectArticleDatas>(e) as CollectArticleDatas)
      .toList();
  if (datas != null) {
    collectArticleEntity.datas = datas;
  }
  final int? offset = jsonConvert.convert<int>(json['offset']);
  if (offset != null) {
    collectArticleEntity.offset = offset;
  }
  final bool? over = jsonConvert.convert<bool>(json['over']);
  if (over != null) {
    collectArticleEntity.over = over;
  }
  final int? pageCount = jsonConvert.convert<int>(json['pageCount']);
  if (pageCount != null) {
    collectArticleEntity.pageCount = pageCount;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    collectArticleEntity.size = size;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    collectArticleEntity.total = total;
  }
  return collectArticleEntity;
}

Map<String, dynamic> $CollectArticleEntityToJson(CollectArticleEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['curPage'] = entity.curPage;
  data['datas'] = entity.datas?.map((v) => v.toJson()).toList();
  data['offset'] = entity.offset;
  data['over'] = entity.over;
  data['pageCount'] = entity.pageCount;
  data['size'] = entity.size;
  data['total'] = entity.total;
  return data;
}

extension CollectArticleEntityExtension on CollectArticleEntity {
  CollectArticleEntity copyWith({
    int? curPage,
    List<CollectArticleDatas>? datas,
    int? offset,
    bool? over,
    int? pageCount,
    int? size,
    int? total,
  }) {
    return CollectArticleEntity()
      ..curPage = curPage ?? this.curPage
      ..datas = datas ?? this.datas
      ..offset = offset ?? this.offset
      ..over = over ?? this.over
      ..pageCount = pageCount ?? this.pageCount
      ..size = size ?? this.size
      ..total = total ?? this.total;
  }
}

CollectArticleDatas $CollectArticleDatasFromJson(Map<String, dynamic> json) {
  final CollectArticleDatas collectArticleDatas = CollectArticleDatas();
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    collectArticleDatas.author = author;
  }
  final int? chapterId = jsonConvert.convert<int>(json['chapterId']);
  if (chapterId != null) {
    collectArticleDatas.chapterId = chapterId;
  }
  final String? chapterName = jsonConvert.convert<String>(json['chapterName']);
  if (chapterName != null) {
    collectArticleDatas.chapterName = chapterName;
  }
  final int? courseId = jsonConvert.convert<int>(json['courseId']);
  if (courseId != null) {
    collectArticleDatas.courseId = courseId;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    collectArticleDatas.desc = desc;
  }
  final String? envelopePic = jsonConvert.convert<String>(json['envelopePic']);
  if (envelopePic != null) {
    collectArticleDatas.envelopePic = envelopePic;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    collectArticleDatas.id = id;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    collectArticleDatas.link = link;
  }
  final String? niceDate = jsonConvert.convert<String>(json['niceDate']);
  if (niceDate != null) {
    collectArticleDatas.niceDate = niceDate;
  }
  final String? origin = jsonConvert.convert<String>(json['origin']);
  if (origin != null) {
    collectArticleDatas.origin = origin;
  }
  final int? originId = jsonConvert.convert<int>(json['originId']);
  if (originId != null) {
    collectArticleDatas.originId = originId;
  }
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    collectArticleDatas.publishTime = publishTime;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    collectArticleDatas.title = title;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    collectArticleDatas.userId = userId;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    collectArticleDatas.visible = visible;
  }
  final int? zan = jsonConvert.convert<int>(json['zan']);
  if (zan != null) {
    collectArticleDatas.zan = zan;
  }
  return collectArticleDatas;
}

Map<String, dynamic> $CollectArticleDatasToJson(CollectArticleDatas entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['author'] = entity.author;
  data['chapterId'] = entity.chapterId;
  data['chapterName'] = entity.chapterName;
  data['courseId'] = entity.courseId;
  data['desc'] = entity.desc;
  data['envelopePic'] = entity.envelopePic;
  data['id'] = entity.id;
  data['link'] = entity.link;
  data['niceDate'] = entity.niceDate;
  data['origin'] = entity.origin;
  data['originId'] = entity.originId;
  data['publishTime'] = entity.publishTime;
  data['title'] = entity.title;
  data['userId'] = entity.userId;
  data['visible'] = entity.visible;
  data['zan'] = entity.zan;
  return data;
}

extension CollectArticleDatasExtension on CollectArticleDatas {
  CollectArticleDatas copyWith({
    String? author,
    int? chapterId,
    String? chapterName,
    int? courseId,
    String? desc,
    String? envelopePic,
    int? id,
    String? link,
    String? niceDate,
    String? origin,
    int? originId,
    int? publishTime,
    String? title,
    int? userId,
    int? visible,
    int? zan,
  }) {
    return CollectArticleDatas()
      ..author = author ?? this.author
      ..chapterId = chapterId ?? this.chapterId
      ..chapterName = chapterName ?? this.chapterName
      ..courseId = courseId ?? this.courseId
      ..desc = desc ?? this.desc
      ..envelopePic = envelopePic ?? this.envelopePic
      ..id = id ?? this.id
      ..link = link ?? this.link
      ..niceDate = niceDate ?? this.niceDate
      ..origin = origin ?? this.origin
      ..originId = originId ?? this.originId
      ..publishTime = publishTime ?? this.publishTime
      ..title = title ?? this.title
      ..userId = userId ?? this.userId
      ..visible = visible ?? this.visible
      ..zan = zan ?? this.zan;
  }
}