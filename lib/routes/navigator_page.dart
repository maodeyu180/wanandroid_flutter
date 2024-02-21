import 'package:flutter/cupertino.dart';

///@author ： 于德海
///time ： 2024/2/21 15:28
///desc ：

class NavigatorPage extends StatefulWidget{


  const NavigatorPage({Key? key,}): super(key : key);

  @override
  State<StatefulWidget> createState() {
    return _NavigatorPageState();
  }

}



class _NavigatorPageState extends State<NavigatorPage>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Tmp"),);
  }
}