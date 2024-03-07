import 'package:flutter/material.dart';

///@author ： 于德海
///time ： 2024/3/4 17:30
///desc ：
///

class TestWidgetPage extends StatefulWidget {
  const TestWidgetPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TestWidgetPageState();
  }
}

class _TestWidgetPageState extends State<TestWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          pinned: true,
          floating: false,
          forceElevated: true,
          elevation: 20,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(background: Stack(children: [
            Container(width: double.infinity,height: double.infinity,decoration: BoxDecoration(color: Colors.yellow),),
            Positioned(bottom: 1,child: Text("Test Data")),
            Positioned(top:60,left:50,child: Text("TESTSET"))
          ],),),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text("$index")),
              childCount: 50),
        )
      ],
    ));
  }
}
