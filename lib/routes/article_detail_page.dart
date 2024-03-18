import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:wan_android_flutter/AppConfig.dart';
import 'package:wan_android_flutter/models/article_trans_entity.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../common/route_config.dart';
import '../models/home_article_list_entity.dart';
import '../net/wan_apis.dart';

///@author ： 于德海
///time ： 2024/2/22 11:43
///desc ：

class ArticleDetailPage extends StatelessWidget {
  late WebViewController webViewController;

  ArticleDetailPage({super.key}) {}

  @override
  Widget build(BuildContext context) {
    ArticleTransEntity detail =
        ModalRoute.of(context)!.settings.arguments as ArticleTransEntity;
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse(detail.url!));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(detail.title!),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: WebViewWidget(controller: webViewController),
        ),
        floatingActionButton: _CollectWidget(id: detail.id));
  }
}

class _CollectWidget extends StatefulWidget {
  final int id;

  const _CollectWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StateCollectWidget();
  }
}

class _StateCollectWidget extends State<_CollectWidget> {
  late bool isCollect;

  @override
  void initState() {
    isCollect = AppConfig.collectArticleIdList.contains(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {

          if (AppConfig.userName.isEmpty) {
            Navigator.of(context).pushNamed(RouteName.login);
            return;
          }
          if (isCollect) {
            _unCollect();
          } else {
            _collect();
          }
        },
        tooltip: 'Like',
        child: Icon(
          isCollect ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }

  void _collect() {
    EasyLoading.show(status: "Waiting...");
    WanApis.collect(widget.id!).then((value) {
      EasyLoading.dismiss();
      setState(() {
        isCollect = true;
      });
    }).catchError((error, stackTrace) {
      EasyLoading.dismiss();
      EasyLoading.showError("Error: ${error.toString()}");
    });
  }

  void _unCollect() {
    EasyLoading.show(status: "Waiting...");
    WanApis.unCollect(widget.id!).then((value) {
      EasyLoading.dismiss();
      setState(() {
        isCollect = false;
      });
    }).catchError((error, stackTrace) {
      EasyLoading.dismiss();
      EasyLoading.showError("Error: ${error.toString()}");
    });
  }
}
