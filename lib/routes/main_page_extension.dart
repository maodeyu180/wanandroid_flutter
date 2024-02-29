import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wan_android_flutter/common/route_config.dart';
import 'package:wan_android_flutter/providers/user_provider.dart';

class MainDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainDrawerState();
  }
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Consumer<UserProvider>(builder: (ctx, user, child) {
                return InkWell(
                  onTap: () {
                    if(user.useName.isEmpty){
                      Navigator.of(context).pushNamed(RouteName.login);
                    }
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 100,
                        ),
                      ),
                      Text(
                        user.useName.isEmpty ? "未登录" : user.useName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              }),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(
                      Icons.favorite,
                    ),
                    title: const Text('我的收藏'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('设置'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
