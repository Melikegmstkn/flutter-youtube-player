import 'package:flutter/material.dart';
import 'package:webview_deneme/pattern_video.dart';
import 'package:webview_deneme/timer.dart';
import 'package:webview_deneme/webview_h5p.dart';
import 'package:webview_deneme/youtube_video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("video player"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VideoPattern()));
            },
          ),
          ElevatedButton(
            child: const Text("Youtube player"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const YoutubePlayerPattern()));
            },
          ),
          ElevatedButton(
            child: const Text("Web view"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Webview()));
            },
          ),
          ElevatedButton(
            child: const Text("Timer"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OtpTimer()));
            },
          ),
        ],
      ),
    );
  }
}
