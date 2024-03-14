import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wan_android_flutter/providers/theme_provider.dart';

///@author ： 于德海
///time ： 2024/3/7 18:07
///desc ：

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("設置"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 20, top: 20,bottom: 20),
              child: Text("更改主顏色:")),
          Row(

            children: [
              Padding(padding: EdgeInsets.all(10)),
              InkWell(
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeThemeColor(Colors.yellow);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.yellow),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              InkWell(
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeThemeColor(Colors.green);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.green),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              InkWell(
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeThemeColor(Colors.deepPurple);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.deepPurple),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              InkWell(
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeThemeColor(Colors.red);
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
