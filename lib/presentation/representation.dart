import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_dashboard/presentation/resources/string_manager.dart';

import 'drawer_menu.dart';

class Representation extends StatelessWidget {
  const Representation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // log(drawerItems[0][drawerItems[0].keys.first][0]
    //     [drawerItems[0][drawerItems[0].keys.first][0].keys.first]);
    return Scaffold(
      appBar: AppBar(title: const Text(AppString.dashboard)),
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        child: Consumer(
          builder: (context, watch, _) {
            // Note here, state does not need to be specified.
            return Html(data: watch(dataChangeNotifier));
          },
        ),
      ),
    );
  }
}

/*
  in case web view
   */
// in body
// WebView(
// initialUrl: 'about:blank',
// onWebViewCreated: (WebViewController webViewController) {
// _controller = webViewController;
// _loadHtmlFromAssets();
// },
// ),

// called function
// _loadHtmlFromAssets() async {
//   String fileText = await rootBundle.loadString('assets/help.html');
//   _controller.loadUrl( Uri.dataFromString(
//       fileText,
//       mimeType: 'text/html',
//       encoding: Encoding.getByName('utf-8')
//   ).toString());
// }
