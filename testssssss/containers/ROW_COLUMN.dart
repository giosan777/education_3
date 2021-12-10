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
        body:  Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.adjust,size: 50,color: Colors.red),
              Icon(Icons.adjust,size: 200,color: Colors.green),
              Icon(Icons.adjust,size: 50,color: Colors.blue),
              Icon(Icons.adjust,size: 50,color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}
