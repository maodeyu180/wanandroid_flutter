import 'dart:math';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:wan_android_flutter/common/common_utils.dart';
import 'package:wan_android_flutter/common/route_config.dart';
import 'package:wan_android_flutter/models/classify_detail_entity.dart';
import 'package:wan_android_flutter/net/wan_apis.dart';
import 'package:wan_android_flutter/providers/collect_action_provider.dart';
import 'package:wan_android_flutter/providers/user_provider.dart';
import '../AppConfig.dart';
import '../models/article_trans_entity.dart';
import '../models/banner_home_entity.dart';
import '../models/home_article_list_entity.dart';

///@author ： 于德海
///time ： 2024/2/21 14:59
///desc ：
///
///
///

const String _tag = "ClassifyDetail";

class ClassifyDetailPage extends StatefulWidget {

  Map<String,dynamic> paramMap;
  ClassifyDetailPage( this.paramMap, {Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ClassifyDetailPageState();
  }
}

class _ClassifyDetailPageState extends State<ClassifyDetailPage> {
  late List<HomeArticleListDatas> _articleList;
  late int cid;
  late String title;

  @override
  void initState() {

    cid = widget.paramMap["cid"];
    title = widget.paramMap['title'];
    _articleList = [];
    tagPrint(_tag, "initState");
    _loadData();
    super.initState();
    Provider.of<CollectActionProvider>(context, listen: false).addListener(() {
      var data = Provider.of<CollectActionProvider>(context, listen: false);
      for (var i = 0; i < _articleList.length; i++) {
        if (_articleList[i].id == data.articleId) {
          _articleList[i].collect = data.action;
          break;
        }
        setState(() {
          _articleList;
        });
      }
    });
  }



  Future<void> _loadData() async {
    HomeArticleListEntity result = await WanApis.classifyList(cid);
    setState(() {
      _articleList.clear();
      _articleList.addAll(result.datas!);
    });
    return Future.value();
  }

  @override
  Widget build(BuildContext context) {
    tagPrint(_tag, "build");
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: _articleList.length,
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return _ClassifyDetailItem(
            itemData: _articleList[index],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    tagPrint(_tag, "dispose");
    super.dispose();
  }


}
//


class _ClassifyDetailItem extends StatelessWidget {
  final HomeArticleListDatas itemData;

  const _ClassifyDetailItem({Key? key, required this.itemData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 120,
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .pushNamed(RouteName.detail, arguments: ArticleTransEntity(itemData.id!,itemData.title!,itemData.link!));
          },
          child: Card(
              color: Theme.of(context).colorScheme.inversePrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 15,
                    child: Text(
                      itemData.title ?? "",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                  Positioned(
                      left: 10,
                      top: 65,
                      child: Text(itemData.author!.isNotEmpty
                          ? "作者：${itemData.author}"
                          : "分享者：${itemData.shareUser}")),
                  Positioned(
                      left: 120,
                      top: 65,
                      child: Text("发布时间：${itemData.niceShareDate}")),
                  Positioned(
                      right: 10,
                      bottom: 10,
                      child: _CollectWidget(
                        itemData: itemData,
                      ))
                ],
              )),
        ));
  }
}

class _CollectWidget extends StatefulWidget {
  final HomeArticleListDatas itemData;

  const _CollectWidget({Key? key, required this.itemData}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StateCollectWidget();
  }
}

class _StateCollectWidget extends State<_CollectWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {

          if (AppConfig.userName.isEmpty) {
            Navigator.of(context).pushNamed(RouteName.login);
            return;
          }
          if (widget.itemData.collect!) {
            _unCollect();
          } else {
            _collect();
          }
        },
        icon: Icon(
          widget.itemData.collect! ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }

  void _collect() {
    EasyLoading.show(status: "Waiting...");
    WanApis.collect(widget.itemData.id!).then((value) {
      EasyLoading.dismiss();
      setState(() {
        widget.itemData.collect = true;
      });
    }).catchError((error, stackTrace) {
      EasyLoading.dismiss();
      EasyLoading.showError("Error: ${error.toString()}");
    });
  }

  void _unCollect() {
    EasyLoading.show(status: "Waiting...");
    WanApis.unCollect(widget.itemData.id!).then((value) {
      EasyLoading.dismiss();
      setState(() {
        widget.itemData.collect = false;
      });
    }).catchError((error, stackTrace) {
      EasyLoading.dismiss();
      EasyLoading.showError("Error: ${error.toString()}");
    });
  }
}
