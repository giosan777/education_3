import 'package:flutter/material.dart';

import 'second_screen1.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = "some text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                text,
                style: TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _returnDataFromSecondScreen(context);
              },
              child:
                  Text("go to second screen", style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }

  void _returnDataFromSecondScreen(BuildContext context) async {
    Route route = MaterialPageRoute(builder: (context) => SecondScreen());
    String result = await Navigator.push(context, route);

    setState(() {
      text = result;
    });
  }
}
