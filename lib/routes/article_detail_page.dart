import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../models/home_article_list_entity.dart';

///@author ： 于德海
///time ： 2024/2/22 11:43
///desc ：

class ArticleDetailPage extends StatelessWidget {
  late WebViewController webViewController;

  ArticleDetailPage({super.key}) {}

  @override
  Widget build(BuildContext context) {
    HomeArticleListDatas detail =
        ModalRoute.of(context)!.settings.arguments as HomeArticleListDatas;
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
      ..loadRequest(Uri.parse(detail.link!));
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
    );
  }
}
