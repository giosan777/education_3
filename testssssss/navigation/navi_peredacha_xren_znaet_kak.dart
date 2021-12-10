import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: FirstHome(),
  onGenerateRoute: (settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) =>FirstHome());
        break;
      case '/second':
        User user=settings.arguments as User;
        return MaterialPageRoute(builder: (context) =>SecondHome(user: user));
        break;
    }
  },
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
            Navigator.pushNamed(context,'/second',arguments: user);
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
  String name;
  int age;
  User({required this.name,required this.age});
}
