import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webview extends StatefulWidget {
  const Webview({Key? key}) : super(key: key);

  @override
  _WebviewState createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  WebViewController? _con;

  String setHTML(String email, String phone, String name) {
    return ('''
    <iframe width="1536" height="714" src="https://www.youtube.com/embed/qqcjNCHW1kA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    ''');
  }

  _loadHTML() async {
    _con!.loadUrl(Uri.dataFromString(
            setHTML("connelblaze@gmil.com", "+2347034857296", "Connel Asikong"),
            mimeType: 'text/html',
            encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  bool tryVideo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webview'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Builder(
              builder: (BuildContext context) {
                Duration sec = const Duration(seconds: 0);
                Timer(const Duration(seconds: 10), () async {
                  setState(() {
                    tryVideo = true;
                  });

                  // Navigator.pushReplacement(context, route);
                });
                return WebView(
                  initialUrl: 'https://flutter.dev',
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: (WebViewController webViewController) {
                    // _controller.complete(webViewController);
                    _con = webViewController;
                    _loadHTML();
                  },
                  onProgress: (int progress) {
                    print("WebView is loading (progress : $progress%)");
                  },
                  navigationDelegate: (NavigationRequest request) {
                    if (request.url.startsWith('https://www.youtube.com/')) {
                      print('blocking navigation to $request}');
                      return NavigationDecision.prevent;
                    }
                    print('allowing navigation to $request');
                    return NavigationDecision.navigate;
                  },
                  onPageStarted: (String url) {
                    print('Page started loading: $url');
                  },
                  onPageFinished: (String url) {
                    print('Page finished loading: $url');
                  },
                  gestureNavigationEnabled: true,
                );
              },
            ),
          ),
          tryVideo
              ? Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue.shade50,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Container(color: Colors.amberAccent),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
