import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@author ： 于德海
///time ： 2024/2/21 15:28
///desc ：

class ClassifyPage extends StatefulWidget{



  ClassifyPage({Key? key,}): super(key : key);

  @override
  State<StatefulWidget> createState() {
    return _ClassifyPageState();
  }

}



class _ClassifyPageState extends State<ClassifyPage>{

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: ExpansionTileGroup(children: [
          ExpansionTileItem(title:Text( "Andoid"),children: [
            Card(child: Text("sdfsdf"),),
            Card(child: Text("sdfsdf"),),
            Card(child: Text("sdfsdf"),),
            Card(child: Text("sdfsdf"),),
            Card(child: Text("sdfsdf"),),
          ],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ExpansionTileItem(title:Text( "Andoid"), children: [Text("data")],),
        ]),);
  }
}