
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold (
        appBar: AppBar(
          title: Text("CODERWHY"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child:ListView(
          children: [
            ProductItem("Apple1","Macbook Product1","http://www.baidu.com/img/bdlogo.png"),
            ProductItem("Apple2","Macbook Product2","http://rongcloud-web.qiniudn.com/docs_demo_rongcloud_logo.png"),
            ProductItem("Apple3","Macbook Product3","http://www.baidu.com/img/bdlogo.png"),
          ],
        )
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgurl;  

  ProductItem(this.title,this.subtitle,this.imgurl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3
        )
      ),
      child: Column(
        children: [
          Text(this.title,style: TextStyle(fontSize: 24)),
          Text(this.subtitle,style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          Image.network(this.imgurl)
        ],
      ),
    );
  }
}