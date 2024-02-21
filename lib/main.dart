/// @author ： 于德海
/// time ： 2024/2/20 19:03
/// desc ：
import 'package:flutter/material.dart';
import 'package:wan_android_flutter/routes/classify_page.dart';
import 'package:wan_android_flutter/routes/home_page.dart';
import 'package:wan_android_flutter/routes/main_page_extension.dart';
import 'package:wan_android_flutter/routes/navigator_page.dart';
import 'package:wan_android_flutter/routes/project_page.dart';

import 'common/common_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WanAndroidFlutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'WanAndroid'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late int _pageIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageIndex = 0;
    _pageController = PageController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (clickIndex){
          setState(() {
            _pageIndex = clickIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: '体系'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: '导航'),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessible_forward), label: '项目'),
        ],
      ),
      body: Center(
        child: Stack(children: [
          Visibility(visible: _pageIndex == 0 ,maintainState: true, child: HomePage()),
          Visibility(visible: _pageIndex == 1 , child: ClassifyPage()),
          Visibility(visible: _pageIndex == 2 , child: NavigatorPage()),
          Visibility(visible: _pageIndex == 3 , child: ProjectPage()),
        ],)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          CommonUtils.showNoticeDialog(context,"暂未开放");
        },
        tooltip: 'FeedBack',
        child: const Icon(Icons.feedback),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
