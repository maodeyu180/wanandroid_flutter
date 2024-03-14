import 'package:wan_android_flutter/generated/json/base/json_convert_content.dart';
import 'package:wan_android_flutter/models/navigation_url_entity.dart';

NavigationUrlEntity $NavigationUrlEntityFromJson(Map<String, dynamic> json) {
  final NavigationUrlEntity navigationUrlEntity = NavigationUrlEntity();
  final List<NavigationUrlArticles>? articles = (json['articles'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<NavigationUrlArticles>(e) as NavigationUrlArticles)
      .toList();
  if (articles != null) {
    navigationUrlEntity.articles = articles;
  }
  final double? cid = jsonConvert.convert<double>(json['cid']);
  if (cid != null) {
    navigationUrlEntity.cid = cid;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    navigationUrlEntity.name = name;
  }
  return navigationUrlEntity;
}

Map<String, dynamic> $NavigationUrlEntityToJson(NavigationUrlEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['articles'] = entity.articles?.map((v) => v.toJson()).toList();
  data['cid'] = entity.cid;
  data['name'] = entity.name;
  return data;
}

extension NavigationUrlEntityExtension on NavigationUrlEntity {
  NavigationUrlEntity copyWith({
    List<NavigationUrlArticles>? articles,
    double? cid,
    String? name,
  }) {
    return NavigationUrlEntity()
      ..articles = articles ?? this.articles
      ..cid = cid ?? this.cid
      ..name = name ?? this.name;
  }
}

NavigationUrlArticles $NavigationUrlArticlesFromJson(
    Map<String, dynamic> json) {
  final NavigationUrlArticles navigationUrlArticles = NavigationUrlArticles();
  final bool? adminAdd = jsonConvert.convert<bool>(json['adminAdd']);
  if (adminAdd != null) {
    navigationUrlArticles.adminAdd = adminAdd;
  }
  final String? apkLink = jsonConvert.convert<String>(json['apkLink']);
  if (apkLink != null) {
    navigationUrlArticles.apkLink = apkLink;
  }
  final double? audit = jsonConvert.convert<double>(json['audit']);
  if (audit != null) {
    navigationUrlArticles.audit = audit;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    navigationUrlArticles.author = author;
  }
  final bool? canEdit = jsonConvert.convert<bool>(json['canEdit']);
  if (canEdit != null) {
    navigationUrlArticles.canEdit = canEdit;
  }
  final double? chapterId = jsonConvert.convert<double>(json['chapterId']);
  if (chapterId != null) {
    navigationUrlArticles.chapterId = chapterId;
  }
  final String? chapterName = jsonConvert.convert<String>(json['chapterName']);
  if (chapterName != null) {
    navigationUrlArticles.chapterName = chapterName;
  }
  final bool? collect = jsonConvert.convert<bool>(json['collect']);
  if (collect != null) {
    navigationUrlArticles.collect = collect;
  }
  final double? courseId = jsonConvert.convert<double>(json['courseId']);
  if (courseId != null) {
    navigationUrlArticles.courseId = courseId;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    navigationUrlArticles.desc = desc;
  }
  final String? descMd = jsonConvert.convert<String>(json['descMd']);
  if (descMd != null) {
    navigationUrlArticles.descMd = descMd;
  }
  final String? envelopePic = jsonConvert.convert<String>(json['envelopePic']);
  if (envelopePic != null) {
    navigationUrlArticles.envelopePic = envelopePic;
  }
  final bool? fresh = jsonConvert.convert<bool>(json['fresh']);
  if (fresh != null) {
    navigationUrlArticles.fresh = fresh;
  }
  final String? host = jsonConvert.convert<String>(json['host']);
  if (host != null) {
    navigationUrlArticles.host = host;
  }
  final double? id = jsonConvert.convert<double>(json['id']);
  if (id != null) {
    navigationUrlArticles.id = id;
  }
  final bool? isAdminAdd = jsonConvert.convert<bool>(json['isAdminAdd']);
  if (isAdminAdd != null) {
    navigationUrlArticles.isAdminAdd = isAdminAdd;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    navigationUrlArticles.link = link;
  }
  final String? niceDate = jsonConvert.convert<String>(json['niceDate']);
  if (niceDate != null) {
    navigationUrlArticles.niceDate = niceDate;
  }
  final String? niceShareDate = jsonConvert.convert<String>(
      json['niceShareDate']);
  if (niceShareDate != null) {
    navigationUrlArticles.niceShareDate = niceShareDate;
  }
  final String? origin = jsonConvert.convert<String>(json['origin']);
  if (origin != null) {
    navigationUrlArticles.origin = origin;
  }
  final String? prefix = jsonConvert.convert<String>(json['prefix']);
  if (prefix != null) {
    navigationUrlArticles.prefix = prefix;
  }
  final String? projectLink = jsonConvert.convert<String>(json['projectLink']);
  if (projectLink != null) {
    navigationUrlArticles.projectLink = projectLink;
  }
  final double? publishTime = jsonConvert.convert<double>(json['publishTime']);
  if (publishTime != null) {
    navigationUrlArticles.publishTime = publishTime;
  }
  final double? realSuperChapterId = jsonConvert.convert<double>(
      json['realSuperChapterId']);
  if (realSuperChapterId != null) {
    navigationUrlArticles.realSuperChapterId = realSuperChapterId;
  }
  final double? selfVisible = jsonConvert.convert<double>(json['selfVisible']);
  if (selfVisible != null) {
    navigationUrlArticles.selfVisible = selfVisible;
  }
  final dynamic shareDate = json['shareDate'];
  if (shareDate != null) {
    navigationUrlArticles.shareDate = shareDate;
  }
  final String? shareUser = jsonConvert.convert<String>(json['shareUser']);
  if (shareUser != null) {
    navigationUrlArticles.shareUser = shareUser;
  }
  final double? superChapterId = jsonConvert.convert<double>(
      json['superChapterId']);
  if (superChapterId != null) {
    navigationUrlArticles.superChapterId = superChapterId;
  }
  final String? superChapterName = jsonConvert.convert<String>(
      json['superChapterName']);
  if (superChapterName != null) {
    navigationUrlArticles.superChapterName = superChapterName;
  }
  final List<dynamic>? tags = (json['tags'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (tags != null) {
    navigationUrlArticles.tags = tags;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    navigationUrlArticles.title = title;
  }
  final double? type = jsonConvert.convert<double>(json['type']);
  if (type != null) {
    navigationUrlArticles.type = type;
  }
  final double? userId = jsonConvert.convert<double>(json['userId']);
  if (userId != null) {
    navigationUrlArticles.userId = userId;
  }
  final double? visible = jsonConvert.convert<double>(json['visible']);
  if (visible != null) {
    navigationUrlArticles.visible = visible;
  }
  final double? zan = jsonConvert.convert<double>(json['zan']);
  if (zan != null) {
    navigationUrlArticles.zan = zan;
  }
  return navigationUrlArticles;
}

Map<String, dynamic> $NavigationUrlArticlesToJson(
    NavigationUrlArticles entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['adminAdd'] = entity.adminAdd;
  data['apkLink'] = entity.apkLink;
  data['audit'] = entity.audit;
  data['author'] = entity.author;
  data['canEdit'] = entity.canEdit;
  data['chapterId'] = entity.chapterId;
  data['chapterName'] = entity.chapterName;
  data['collect'] = entity.collect;
  data['courseId'] = entity.courseId;
  data['desc'] = entity.desc;
  data['descMd'] = entity.descMd;
  data['envelopePic'] = entity.envelopePic;
  data['fresh'] = entity.fresh;
  data['host'] = entity.host;
  data['id'] = entity.id;
  data['isAdminAdd'] = entity.isAdminAdd;
  data['link'] = entity.link;
  data['niceDate'] = entity.niceDate;
  data['niceShareDate'] = entity.niceShareDate;
  data['origin'] = entity.origin;
  data['prefix'] = entity.prefix;
  data['projectLink'] = entity.projectLink;
  data['publishTime'] = entity.publishTime;
  data['realSuperChapterId'] = entity.realSuperChapterId;
  data['selfVisible'] = entity.selfVisible;
  data['shareDate'] = entity.shareDate;
  data['shareUser'] = entity.shareUser;
  data['superChapterId'] = entity.superChapterId;
  data['superChapterName'] = entity.superChapterName;
  data['tags'] = entity.tags;
  data['title'] = entity.title;
  data['type'] = entity.type;
  data['userId'] = entity.userId;
  data['visible'] = entity.visible;
  data['zan'] = entity.zan;
  return data;
}

extension NavigationUrlArticlesExtension on NavigationUrlArticles {
  NavigationUrlArticles copyWith({
    bool? adminAdd,
    String? apkLink,
    double? audit,
    String? author,
    bool? canEdit,
    double? chapterId,
    String? chapterName,
    bool? collect,
    double? courseId,
    String? desc,
    String? descMd,
    String? envelopePic,
    bool? fresh,
    String? host,
    double? id,
    bool? isAdminAdd,
    String? link,
    String? niceDate,
    String? niceShareDate,
    String? origin,
    String? prefix,
    String? projectLink,
    double? publishTime,
    double? realSuperChapterId,
    double? selfVisible,
    dynamic shareDate,
    String? shareUser,
    double? superChapterId,
    String? superChapterName,
    List<dynamic>? tags,
    String? title,
    double? type,
    double? userId,
    double? visible,
    double? zan,
  }) {
    return NavigationUrlArticles()
      ..adminAdd = adminAdd ?? this.adminAdd
      ..apkLink = apkLink ?? this.apkLink
      ..audit = audit ?? this.audit
      ..author = author ?? this.author
      ..canEdit = canEdit ?? this.canEdit
      ..chapterId = chapterId ?? this.chapterId
      ..chapterName = chapterName ?? this.chapterName
      ..collect = collect ?? this.collect
      ..courseId = courseId ?? this.courseId
      ..desc = desc ?? this.desc
      ..descMd = descMd ?? this.descMd
      ..envelopePic = envelopePic ?? this.envelopePic
      ..fresh = fresh ?? this.fresh
      ..host = host ?? this.host
      ..id = id ?? this.id
      ..isAdminAdd = isAdminAdd ?? this.isAdminAdd
      ..link = link ?? this.link
      ..niceDate = niceDate ?? this.niceDate
      ..niceShareDate = niceShareDate ?? this.niceShareDate
      ..origin = origin ?? this.origin
      ..prefix = prefix ?? this.prefix
      ..projectLink = projectLink ?? this.projectLink
      ..publishTime = publishTime ?? this.publishTime
      ..realSuperChapterId = realSuperChapterId ?? this.realSuperChapterId
      ..selfVisible = selfVisible ?? this.selfVisible
      ..shareDate = shareDate ?? this.shareDate
      ..shareUser = shareUser ?? this.shareUser
      ..superChapterId = superChapterId ?? this.superChapterId
      ..superChapterName = superChapterName ?? this.superChapterName
      ..tags = tags ?? this.tags
      ..title = title ?? this.title
      ..type = type ?? this.type
      ..userId = userId ?? this.userId
      ..visible = visible ?? this.visible
      ..zan = zan ?? this.zan;
  }
}