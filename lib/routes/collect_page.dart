import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:wan_android_flutter/net/wan_apis.dart';

import '../AppConfig.dart';
import '../common/route_config.dart';
import '../models/article_trans_entity.dart';
import '../models/collect_article_entity.dart';

///@author ： 于德海
///time ： 2024/3/1 15:13
///desc ：
///
///
class CollectPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _CollectPageState();
  }
}


class _CollectPageState extends State<CollectPage> {
  List<CollectArticleDatas> _collectList = [];
  int _pageIndex = 0;
  @override
  void initState() {
    _pageIndex = 0;
    _loadCollection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("我的收藏"),),
        body: ListView.builder(
            itemCount: _collectList.length, itemBuilder: (context, index) {
            return _CollectPageItem(itemData: _collectList[index]);
        }),
        );
  }


  void _loadCollection() async {
    CollectArticleEntity entity = await WanApis.collectList(_pageIndex);
    if (_pageIndex == 0) {
      _collectList.clear();
    }
    if (entity.datas!.isEmpty) {
      return;
    }
    setState(() {
      _collectList.addAll(entity.datas!);
      for(CollectArticleDatas data in entity.datas!){
        AppConfig.collectArticleIdList.add(data.id!);
      }
    });
  }
}


class _CollectPageItem extends StatelessWidget {
  final CollectArticleDatas itemData;

  const _CollectPageItem({Key? key, required this.itemData}) : super(key: key);

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
              color: Theme
                  .of(context)
                  .colorScheme
                  .inversePrimary,
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
                      child: Text("作者：${itemData.author}"
                         )),
                  Positioned(
                      left: 120,
                      top: 65,
                      child: Text( "发布时间：${itemData.niceDate}")),
                  Positioned(
                      right: 10,
                      bottom: 10,
                      child: _CollectWidget(
                        itemData: itemData,
                        unCollectFunc: (int id){

                        },
                      ))
                ],
              )),
        ));
  }
}



class _CollectWidget extends StatefulWidget {
  final CollectArticleDatas itemData;
  final Function unCollectFunc;

  const _CollectWidget({Key? key, required this.itemData,required this.unCollectFunc}) : super(key: key);

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
          _unCollect();
        },
        icon: const Icon(
          Icons.favorite,
          color: Colors.red,
        ));
  }



  void _unCollect(){
    EasyLoading.show(status: "Waiting...");
    WanApis.unCollect(widget.itemData.id!).then((value)  {
      EasyLoading.dismiss();
      widget.unCollectFunc(widget.itemData.id!);
    }).catchError((error, stackTrace) {
      EasyLoading.dismiss();
      EasyLoading.showError("Error: ${error.toString()}");
    });
   }

}
