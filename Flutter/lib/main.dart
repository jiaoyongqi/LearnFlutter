
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const Center(
//       child: Text(
//         "hello World",ww
//         textDirection: TextDirection.ltr,
//         style: TextStyle(
//           fontSize: 30,
//           color: Colors.orange
//         ),
//       ),
//     )
//   );
// }

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
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed:() {
            print("监听floatingActionButton");
          },
        ),
        // appBar: AppBar(
        //   title: const Text("Example title"),
        // ),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: () {
                        print("监听按钮的点击");
                        print(counter);
                        setState(() {
                          counter++;
                        });
                    },
                    child: Text("计数+1"),
                ),
                RaisedButton(
                  onPressed: () {
                    print("监听按钮的点击");
                    print(counter);
                    setState(() {
                      counter--;
                    });
                  },
                  child: Text("计数-1"),
                ),
              ],
            ),
            Text("当前计数:$counter",style: TextStyle(fontSize:25),),
          ],
        ),
      );
  }

}

//不能实现
// class ContentWidget1 extends StatelessWidget {
//
//   final int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//       return  Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RaisedButton(
//                 onPressed: () {
//                     print("监听按钮的点击");
//                     counter++;
//                 },
//                 child: Text("计数+1"),
//             ),
//             Text("当前计数:$counter",style: TextStyle(fontSize:25),),
//           ],
//         ),
//       );
//   }
// }

void test(String name) {

}