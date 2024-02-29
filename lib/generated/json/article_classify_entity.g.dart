import 'package:wan_android_flutter/generated/json/base/json_convert_content.dart';
import 'package:wan_android_flutter/models/article_classify_entity.dart';

ArticleClassifyEntity $ArticleClassifyEntityFromJson(
    Map<String, dynamic> json) {
  final ArticleClassifyEntity articleClassifyEntity = ArticleClassifyEntity();
  final List<dynamic>? articleList = (json['articleList'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (articleList != null) {
    articleClassifyEntity.articleList = articleList;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    articleClassifyEntity.author = author;
  }
  final List<ArticleClassifyChildren>? children = (json['children'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<ArticleClassifyChildren>(
          e) as ArticleClassifyChildren).toList();
  if (children != null) {
    articleClassifyEntity.children = children;
  }
  final int? courseId = jsonConvert.convert<int>(json['courseId']);
  if (courseId != null) {
    articleClassifyEntity.courseId = courseId;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    articleClassifyEntity.cover = cover;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    articleClassifyEntity.desc = desc;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    articleClassifyEntity.id = id;
  }
  final String? lisense = jsonConvert.convert<String>(json['lisense']);
  if (lisense != null) {
    articleClassifyEntity.lisense = lisense;
  }
  final String? lisenseLink = jsonConvert.convert<String>(json['lisenseLink']);
  if (lisenseLink != null) {
    articleClassifyEntity.lisenseLink = lisenseLink;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    articleClassifyEntity.name = name;
  }
  final int? order = jsonConvert.convert<int>(json['order']);
  if (order != null) {
    articleClassifyEntity.order = order;
  }
  final int? parentChapterId = jsonConvert.convert<int>(
      json['parentChapterId']);
  if (parentChapterId != null) {
    articleClassifyEntity.parentChapterId = parentChapterId;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    articleClassifyEntity.type = type;
  }
  final bool? userControlSetTop = jsonConvert.convert<bool>(
      json['userControlSetTop']);
  if (userControlSetTop != null) {
    articleClassifyEntity.userControlSetTop = userControlSetTop;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    articleClassifyEntity.visible = visible;
  }
  return articleClassifyEntity;
}

Map<String, dynamic> $ArticleClassifyEntityToJson(
    ArticleClassifyEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['articleList'] = entity.articleList;
  data['author'] = entity.author;
  data['children'] = entity.children?.map((v) => v.toJson()).toList();
  data['courseId'] = entity.courseId;
  data['cover'] = entity.cover;
  data['desc'] = entity.desc;
  data['id'] = entity.id;
  data['lisense'] = entity.lisense;
  data['lisenseLink'] = entity.lisenseLink;
  data['name'] = entity.name;
  data['order'] = entity.order;
  data['parentChapterId'] = entity.parentChapterId;
  data['type'] = entity.type;
  data['userControlSetTop'] = entity.userControlSetTop;
  data['visible'] = entity.visible;
  return data;
}

extension ArticleClassifyEntityExtension on ArticleClassifyEntity {
  ArticleClassifyEntity copyWith({
    List<dynamic>? articleList,
    String? author,
    List<ArticleClassifyChildren>? children,
    int? courseId,
    String? cover,
    String? desc,
    int? id,
    String? lisense,
    String? lisenseLink,
    String? name,
    int? order,
    int? parentChapterId,
    int? type,
    bool? userControlSetTop,
    int? visible,
  }) {
    return ArticleClassifyEntity()
      ..articleList = articleList ?? this.articleList
      ..author = author ?? this.author
      ..children = children ?? this.children
      ..courseId = courseId ?? this.courseId
      ..cover = cover ?? this.cover
      ..desc = desc ?? this.desc
      ..id = id ?? this.id
      ..lisense = lisense ?? this.lisense
      ..lisenseLink = lisenseLink ?? this.lisenseLink
      ..name = name ?? this.name
      ..order = order ?? this.order
      ..parentChapterId = parentChapterId ?? this.parentChapterId
      ..type = type ?? this.type
      ..userControlSetTop = userControlSetTop ?? this.userControlSetTop
      ..visible = visible ?? this.visible;
  }
}

ArticleClassifyChildren $ArticleClassifyChildrenFromJson(
    Map<String, dynamic> json) {
  final ArticleClassifyChildren articleClassifyChildren = ArticleClassifyChildren();
  final List<dynamic>? articleList = (json['articleList'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (articleList != null) {
    articleClassifyChildren.articleList = articleList;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    articleClassifyChildren.author = author;
  }
  final List<dynamic>? children = (json['children'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (children != null) {
    articleClassifyChildren.children = children;
  }
  final int? courseId = jsonConvert.convert<int>(json['courseId']);
  if (courseId != null) {
    articleClassifyChildren.courseId = courseId;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    articleClassifyChildren.cover = cover;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    articleClassifyChildren.desc = desc;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    articleClassifyChildren.id = id;
  }
  final String? lisense = jsonConvert.convert<String>(json['lisense']);
  if (lisense != null) {
    articleClassifyChildren.lisense = lisense;
  }
  final String? lisenseLink = jsonConvert.convert<String>(json['lisenseLink']);
  if (lisenseLink != null) {
    articleClassifyChildren.lisenseLink = lisenseLink;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    articleClassifyChildren.name = name;
  }
  final int? order = jsonConvert.convert<int>(json['order']);
  if (order != null) {
    articleClassifyChildren.order = order;
  }
  final int? parentChapterId = jsonConvert.convert<int>(
      json['parentChapterId']);
  if (parentChapterId != null) {
    articleClassifyChildren.parentChapterId = parentChapterId;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    articleClassifyChildren.type = type;
  }
  final bool? userControlSetTop = jsonConvert.convert<bool>(
      json['userControlSetTop']);
  if (userControlSetTop != null) {
    articleClassifyChildren.userControlSetTop = userControlSetTop;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    articleClassifyChildren.visible = visible;
  }
  return articleClassifyChildren;
}

Map<String, dynamic> $ArticleClassifyChildrenToJson(
    ArticleClassifyChildren entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['articleList'] = entity.articleList;
  data['author'] = entity.author;
  data['children'] = entity.children;
  data['courseId'] = entity.courseId;
  data['cover'] = entity.cover;
  data['desc'] = entity.desc;
  data['id'] = entity.id;
  data['lisense'] = entity.lisense;
  data['lisenseLink'] = entity.lisenseLink;
  data['name'] = entity.name;
  data['order'] = entity.order;
  data['parentChapterId'] = entity.parentChapterId;
  data['type'] = entity.type;
  data['userControlSetTop'] = entity.userControlSetTop;
  data['visible'] = entity.visible;
  return data;
}

extension ArticleClassifyChildrenExtension on ArticleClassifyChildren {
  ArticleClassifyChildren copyWith({
    List<dynamic>? articleList,
    String? author,
    List<dynamic>? children,
    int? courseId,
    String? cover,
    String? desc,
    int? id,
    String? lisense,
    String? lisenseLink,
    String? name,
    int? order,
    int? parentChapterId,
    int? type,
    bool? userControlSetTop,
    int? visible,
  }) {
    return ArticleClassifyChildren()
      ..articleList = articleList ?? this.articleList
      ..author = author ?? this.author
      ..children = children ?? this.children
      ..courseId = courseId ?? this.courseId
      ..cover = cover ?? this.cover
      ..desc = desc ?? this.desc
      ..id = id ?? this.id
      ..lisense = lisense ?? this.lisense
      ..lisenseLink = lisenseLink ?? this.lisenseLink
      ..name = name ?? this.name
      ..order = order ?? this.order
      ..parentChapterId = parentChapterId ?? this.parentChapterId
      ..type = type ?? this.type
      ..userControlSetTop = userControlSetTop ?? this.userControlSetTop
      ..visible = visible ?? this.visible;
  }
}