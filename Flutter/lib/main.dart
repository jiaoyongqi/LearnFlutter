
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
    return Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            "https://pic.ntimg.cn/file/20180820/27374389_124441132000_2.jpg",
            width: 150,
            height: 150,
          ),
        )
    );
  }
}

class CircleImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.network(
          "https://pic.ntimg.cn/file/20180820/27374389_124441132000_2.jpg",
          width: 150,
          height: 150,
        )
    );
  }
}

class AssetsImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/bdlogo.png");
  }
}

class NetWorkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.red,
        child: Image.network(
          "http://www.baidu.com/img/bdlogo.png",
          // fit:BoxFit.cover
          repeat: ImageRepeat.repeatY ,
        ),
      ),
    );
  }
}

class CustomButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: RaisedButton(
        color: Colors.red,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.people,color: Colors.white,),
            SizedBox(width: 10,),
            Text("我是按钮",style: TextStyle(fontSize: 20,color: Colors.white),),
          ],
        ),
        onPressed: () => print("按钮发生点击"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child:Text("RaiseButton"),
          onPressed: () => print("RaiseButton"),
        ),
        FlatButton(
          child:Text("FlatButton"),
          onPressed: () => print("FlatButton"),
        ),
        OutlinedButton(
          child:Text("OutlinedButton"),
          onPressed: () => print("OutlinedButton"),
        ),
        FloatingActionButton(
          child:Text("FloatingActionButton"),
          onPressed: () => print("FloatingActionButton"),
        ),
      ],
    );
  }
}

class TextRichDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          children: [
            TextSpan(
                text:"《赠汪伦》",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                )
            ),
            TextSpan(
              text:"李白",
              style: TextStyle(fontSize: 18),
            ),
            TextSpan(
              text: "\n李白乘舟将欲行，忽闻岸上踏歌声。\n桃花潭水深千尺，不及汪伦送我情。",
              style: TextStyle(fontSize: 30,color: Colors.purple),
            ),
          ]
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TextDemo extends StatelessWidget {
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

