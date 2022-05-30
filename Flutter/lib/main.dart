
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
        // appBar: AppBar(
        //   title: const Text("Example title"),
        // ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return const Center(
        child: Text(
          "hello World",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 30,
              color: Colors.orange
          ),
        ),
      );
  }
}

void test(String name) {

}