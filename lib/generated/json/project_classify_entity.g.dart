import 'package:wan_android_flutter/generated/json/base/json_convert_content.dart';
import 'package:wan_android_flutter/models/project_classify_entity.dart';

ProjectClassifyEntity $ProjectClassifyEntityFromJson(
    Map<String, dynamic> json) {
  final ProjectClassifyEntity projectClassifyEntity = ProjectClassifyEntity();
  final List<dynamic>? articleList = (json['articleList'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (articleList != null) {
    projectClassifyEntity.articleList = articleList;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    projectClassifyEntity.author = author;
  }
  final List<dynamic>? children = (json['children'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (children != null) {
    projectClassifyEntity.children = children;
  }
  final int? courseId = jsonConvert.convert<int>(json['courseId']);
  if (courseId != null) {
    projectClassifyEntity.courseId = courseId;
  }
  final String? cover = jsonConvert.convert<String>(json['cover']);
  if (cover != null) {
    projectClassifyEntity.cover = cover;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    projectClassifyEntity.desc = desc;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    projectClassifyEntity.id = id;
  }
  final String? lisense = jsonConvert.convert<String>(json['lisense']);
  if (lisense != null) {
    projectClassifyEntity.lisense = lisense;
  }
  final String? lisenseLink = jsonConvert.convert<String>(json['lisenseLink']);
  if (lisenseLink != null) {
    projectClassifyEntity.lisenseLink = lisenseLink;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    projectClassifyEntity.name = name;
  }
  final int? order = jsonConvert.convert<int>(json['order']);
  if (order != null) {
    projectClassifyEntity.order = order;
  }
  final int? parentChapterId = jsonConvert.convert<int>(
      json['parentChapterId']);
  if (parentChapterId != null) {
    projectClassifyEntity.parentChapterId = parentChapterId;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    projectClassifyEntity.type = type;
  }
  final bool? userControlSetTop = jsonConvert.convert<bool>(
      json['userControlSetTop']);
  if (userControlSetTop != null) {
    projectClassifyEntity.userControlSetTop = userControlSetTop;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    projectClassifyEntity.visible = visible;
  }
  return projectClassifyEntity;
}

Map<String, dynamic> $ProjectClassifyEntityToJson(
    ProjectClassifyEntity entity) {
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

extension ProjectClassifyEntityExtension on ProjectClassifyEntity {
  ProjectClassifyEntity copyWith({
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
    return ProjectClassifyEntity()
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