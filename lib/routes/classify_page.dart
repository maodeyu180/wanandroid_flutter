import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:wan_android_flutter/common/common_utils.dart';
import 'package:wan_android_flutter/common/route_config.dart';
import 'package:wan_android_flutter/net/wan_apis.dart';

import '../models/article_classify_entity.dart';

///@author ： 于德海
///time ： 2024/2/21 15:28
///desc ：

final _tag = "ClassifyPage";

class ClassifyPage extends StatefulWidget {
  ClassifyPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ClassifyPageState();
  }
}

class _ClassifyPageState extends State<ClassifyPage> {
  List<ArticleClassifyEntity> _list = [];

  @override
  void initState() {
    super.initState();
    WanApis.articleClassify().then((value) {
      setState(() {
        _list = value;
      });
    }).onError((error, stackTrace) {
      tagPrint(_tag, "error =  $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionTileGroup(
          toggleType: ToggleType.expandOnlyCurrent, children: _listItem()),
    );
  }

  List<ExpansionTileItem> _listItem() {
    List<ExpansionTileItem> list = [];
    for (var i = 0; i < _list.length; i++) {
      List<_ClassifyItem> itemChild = [];
      for (var j = 0; j < _list[i].children!.length; j++) {
        itemChild.add(_ClassifyItem(childData: _list[i].children![j]));
      }
      var item = ExpansionTileItem(backgroundColor:Theme.of(context).colorScheme.inversePrimary,title: Text(_list[i].name!), children: itemChild);
      list.add(item);
    }
    return list;
  }
}

class _ClassifyItem extends StatelessWidget {
  ArticleClassifyChildren childData;

  _ClassifyItem({super.key, required this.childData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击${childData.name!}");
        Map<String,dynamic> map ={};
        map['cid'] = childData.id;
        map['title'] = childData.name!;
        Navigator.of(context).pushNamed(RouteName.classifyDetail,arguments: map);
      },
      child: Container(
        width: double.infinity,
        height: 50,
        alignment: Alignment.centerLeft,
        child: Text(childData.name!),
      ),
    );
  }
}
