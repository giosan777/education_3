import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: FirstHome(),
));

class FirstHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Home"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            User user =User(name: "giosan777", age: 31);
            Route route=MaterialPageRoute(builder: (context)=>SecondHome(user:user));
            Navigator.push(context,route);
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  final User user;
  SecondHome({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("name:${this.user.name} and age ${this.user.age}"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Go to Firs Screen"),
        ),
      ),
    );
  }
}

class User{
  final String name;
  final int age;
  User({required this.name,required this.age});
}
