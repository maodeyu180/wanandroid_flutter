import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:wan_android_flutter/net/wan_apis.dart';

import '../models/banner_home_entity.dart';
import '../models/home_article_list_entity.dart';

///@author ： 于德海
///time ： 2024/2/21 14:59
///desc ：


class HomePage extends StatefulWidget {


  HomePage({Key? key }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }

}


class _HomePageState extends State<HomePage> {
  late List<BannerHomeEntity> _bannerList;
  late int pageIndex;
  late List<HomeArticleListDatas> _articleList;
  @override
  void initState() {
    pageIndex = 0;
    _articleList = [];
    WanApis.bannerHome((data) {
       _bannerList = data;
       _requestArticle();
    }, (error) {});


    super.initState();
  }

  void _requestArticle(){
    WanApis.homeList(pageIndex, (data) {
      setState(() {
        _articleList.addAll(data.datas!);
      });
    }, (e) {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
            itemCount: _articleList.length + 1,
            shrinkWrap: true,
            itemBuilder: (ctx,index){
              if(index == 0){
               return  SizedBox(height: 200,
                  width: double.infinity,
                  child: Swiper(itemBuilder: (context, index) {
                    return Image.network(_bannerList[index].imagePath ?? "",fit: BoxFit.fill);
                  }, itemCount: _bannerList.length,pagination: SwiperPagination(),));
              }else{
                return _HomePageItem(itemData: _articleList[index-1],);
              }
            },

        ),);
  }
}
//

final _randomColors = [Colors.deepPurple,Colors.deepOrange,Colors.indigoAccent,Colors.pinkAccent];


class _HomePageItem extends StatelessWidget{
  final HomeArticleListDatas itemData;


  const _HomePageItem({Key? key,required this.itemData}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,height: 120,child: Card(
      color: _randomColors[Random().nextInt(_randomColors.length)],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Stack(
        children: [
          Positioned(left: 10,top: 10,child: Text(itemData.title ?? "",style: TextStyle(fontSize: 15,color: Colors.black),),),
          Positioned(left: 10,top:60,child: Text("作者：${itemData.author}"))
        ],
      )

    ),);
  }
}