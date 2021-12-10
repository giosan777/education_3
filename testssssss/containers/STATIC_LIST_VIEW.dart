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
  return ListView(
    padding: EdgeInsets.all(15),
    // shrinkWrap: true,
    // scrollDirection: Axis.horizontal,//Horizontal listView
    // itemExtent: 300,//Items Size
    // reverse: true,//qvevidan zevit //anu ukan ra
    children: [
      ListTile(
        title: Text("Sun"),
        subtitle: Text("Today Clear"),
        leading: Icon(Icons.wb_sunny),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text("Cloud "),
        subtitle: Text("Today Cloudy"),
        leading: Icon(Icons.wb_cloudy),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text("Snow"),
        subtitle: Text("Today Snow"),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    ],
  );
}
