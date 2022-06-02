
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是标题'),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "《赠汪伦》李白 \n李白乘舟将欲行，忽闻岸上踏歌声。\n桃花潭水深千尺，不及汪伦送我情。",
      style: TextStyle(
        fontSize: 30,
        color: Colors.orange,
      ),
      textAlign: TextAlign.center,
      // maxLines: 2,
      // overflow: TextOverflow.ellipsis,
    );
  }
}

