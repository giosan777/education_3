import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView",
            style: TextStyle(color: Colors.black87),
          ),
        ),
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  final List<String> item = List<String>.generate(10000, (i) => "item $i");
  return ListView.builder(
    itemCount: item.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text("${item[index]}"),
          leading: Icon(
            Icons.accessibility,
            color: Colors.deepPurple,
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      );
    },
  );
}
