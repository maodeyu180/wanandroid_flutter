import 'package:wan_android_flutter/generated/json/base/json_convert_content.dart';
import 'package:wan_android_flutter/models/banner_home_entity.dart';

BannerHomeEntity $BannerHomeEntityFromJson(Map<String, dynamic> json) {
  final BannerHomeEntity bannerHomeEntity = BannerHomeEntity();
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    bannerHomeEntity.desc = desc;
  }
  final double? id = jsonConvert.convert<double>(json['id']);
  if (id != null) {
    bannerHomeEntity.id = id;
  }
  final String? imagePath = jsonConvert.convert<String>(json['imagePath']);
  if (imagePath != null) {
    bannerHomeEntity.imagePath = imagePath;
  }
  final double? isVisible = jsonConvert.convert<double>(json['isVisible']);
  if (isVisible != null) {
    bannerHomeEntity.isVisible = isVisible;
  }
  final double? order = jsonConvert.convert<double>(json['order']);
  if (order != null) {
    bannerHomeEntity.order = order;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    bannerHomeEntity.title = title;
  }
  final double? type = jsonConvert.convert<double>(json['type']);
  if (type != null) {
    bannerHomeEntity.type = type;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    bannerHomeEntity.url = url;
  }
  return bannerHomeEntity;
}

Map<String, dynamic> $BannerHomeEntityToJson(BannerHomeEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['desc'] = entity.desc;
  data['id'] = entity.id;
  data['imagePath'] = entity.imagePath;
  data['isVisible'] = entity.isVisible;
  data['order'] = entity.order;
  data['title'] = entity.title;
  data['type'] = entity.type;
  data['url'] = entity.url;
  return data;
}

extension BannerHomeEntityExtension on BannerHomeEntity {
  BannerHomeEntity copyWith({
    String? desc,
    double? id,
    String? imagePath,
    double? isVisible,
    double? order,
    String? title,
    double? type,
    String? url,
  }) {
    return BannerHomeEntity()
      ..desc = desc ?? this.desc
      ..id = id ?? this.id
      ..imagePath = imagePath ?? this.imagePath
      ..isVisible = isVisible ?? this.isVisible
      ..order = order ?? this.order
      ..title = title ?? this.title
      ..type = type ?? this.type
      ..url = url ?? this.url;
  }
}