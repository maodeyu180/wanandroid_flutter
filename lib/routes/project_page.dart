import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:wan_android_flutter/models/project_list_entity.dart';
import 'package:wan_android_flutter/net/wan_apis.dart';
import 'package:wan_android_flutter/net/wan_exception.dart';

import '../common/route_config.dart';
import '../models/article_trans_entity.dart';
import '../models/project_classify_entity.dart';

///@author ： 于德海
///time ： 2024/2/21 15:28
///desc ：

class ProjectPage extends StatefulWidget {
  const ProjectPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ProjectPageState();
  }
}

class _ProjectPageState extends State<ProjectPage> {
  final List<ProjectListDatas> _projectList = [];
  final List<ProjectClassifyEntity> _classifyList = [];
  var _nowCid = "294";
  @override
  void initState() {
    super.initState();
    _loadClassify();
  }

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,height: double.infinity,child: Padding(
          padding: EdgeInsets.all(8),
          child: Stack(children: [
            ListView.builder(
                        itemCount: _projectList.length,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return _ProjectItem(_projectList[index]);
                        },
                      ),
            Positioned(top: 200,right:2,width:50,height:50,child: FloatingActionButton(onPressed: () {
              _showClassifyDialog().then((value) {
                if(value != null){
                  _nowCid = value;
                  _loadProject();
                }
              });
            },
            child: Icon(Icons.refresh),))
          ],),
        ),);
  }

  void _loadClassify() async{
    try {
          var result = await WanApis.getProjectClassify();
          _classifyList.addAll(result);
          if(_classifyList.isNotEmpty){
            _nowCid = _classifyList[0].id as String;
          }
        } catch (e) {
          if (e is WanException) {
            EasyLoading.showToast("加载失败 $e");
          }
        }
      _loadProject();
  }
  void _loadProject() async {
    try {
      var result = await WanApis.getProjectList(_nowCid);
      setState(() {
        _projectList.clear();
        _projectList.addAll(result.datas!);
      });
    } catch (e) {
      if (e is WanException) {
        EasyLoading.showToast("加载失败 $e");
      }
    }
  }


  Future<String?> _showClassifyDialog() async {
    return showDialog<String>(
      context: context,
      builder: (ctx) => SimpleDialog(
        title: const Text("请选择项目分类"),
        children: [
          ..._classifyList.map((entity) => SimpleDialogOption(
            onPressed: () => Navigator.pop(context, "${entity.id!}"),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(entity.name!),
            ),
          )).toList(),
        ],
      ),
    );
  }
  // Future<String?> _showClassifyDialog() async{
  //  return showDialog<String>(context: context, builder: (ctx){
  //    return SimpleDialog(title: const Text("请选择项目分类"),children: _getClassifyList(),);
  //  });
  // }
  // List<Widget> _getClassifyList(){
  //   List<Widget> result = [];
  //   for(ProjectClassifyEntity entity in _classifyList){
  //     result.add(SimpleDialogOption(
  //       onPressed: () {
  //         Navigator.pop(context, "${entity.id!}");
  //       },
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 6),
  //         child:  Text(entity.name!),
  //       ),
  //     ));
  //   }
  //   return result;
  // }
}

class _ProjectItem extends StatefulWidget {
  final ProjectListDatas itemData;

  const _ProjectItem(this.itemData, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ProjectItemState();
  }
}

class _ProjectItemState extends State<_ProjectItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){

      Navigator.of(context)
          .pushNamed(RouteName.detail, arguments: ArticleTransEntity(widget.itemData.id!,widget.itemData.title!,widget.itemData.link!));
    },child: Card(
          color: Theme.of(context).colorScheme.inversePrimary,
          child: SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  Positioned(left:14,top:25,height:150,child: Image.network(widget.itemData.envelopePic!,fit: BoxFit.fill,),),
                  Positioned(left: 110, top: 25, child: Text(widget.itemData.title!,style: const TextStyle(fontWeight: FontWeight.bold),)),
                  Positioned(left: 110, top: 45,right: 10, child: Text(widget.itemData.desc!)),
                ],
              )),
        ),);
  }
}



