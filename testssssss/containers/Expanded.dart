import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("sagoo"),
          centerTitle: true,
        ),
        body: Row(
          children: [
            Expanded(
              flex: 2,
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.red,
                child: Text("1"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.green,
                child: Text("2"),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.blueAccent,
                child: Text("3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
