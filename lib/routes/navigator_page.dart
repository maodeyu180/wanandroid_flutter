import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wan_android_flutter/models/navigation_url_entity.dart';
import 'package:wan_android_flutter/net/wan_apis.dart';

///@author ： 于德海
///time ： 2024/2/21 15:28
///desc ：

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NavigatorPageState();
  }
}

class _NavigatorPageState extends State<NavigatorPage> {
  final List<NavigationUrlEntity> _navigationList = [];

  @override
  void initState() {
    super.initState();
    _reqNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Material(

      child: Padding(padding: EdgeInsets.only(left: 6),child: ListView.builder(
                itemCount: _navigationList.length, itemBuilder: (ctx, index) {
                  return _NavigationItem(_navigationList[index]);
            }),),
    );
  }

  void _reqNavigation() async {
    final resultList = await WanApis.getNavigation();
    if (resultList.isNotEmpty) {
      setState(() {
        _navigationList.addAll(resultList);
      });
    }
  }
}

class _NavigationItem extends StatelessWidget {
  final NavigationUrlEntity itemData;

  const _NavigationItem(this.itemData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Text(
              itemData.name!,
              style: TextStyle(fontSize: 16),
            )),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: _buttonList(context),
        )
      ],
    );
  }

  List<Widget> _buttonList(BuildContext ctx) {
    List<Widget> result = [];
    for (NavigationUrlArticles item in itemData.articles!) {
      result.add(InkWell(
        onTap: () {
          launchUrl(Uri.parse(item.link!));
        },
        child: Card(
          color: Theme.of(ctx).colorScheme.inversePrimary,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Text(item.title!),
          ),
        ),
      ));
    }
    return result;
  }
}
