


import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MainDrawerState();
  }
}


class _MainDrawerState extends State<MainDrawer>{
  
  
  @override
  Widget build(BuildContext context) {
    return Drawer(child: Column(children: [
      Text("Drawer")
    ],),);
  }
}