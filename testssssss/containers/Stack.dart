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
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Icon(Icons.airplay, color: Colors.red, size: 300),
            Positioned(
              top: 60,
                left: 45,
                child: Text(
              "TV",
              style: TextStyle(fontSize: 30),
            ))
          ],
        ),
      ),
    );
  }
}
