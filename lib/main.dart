import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()); //runApp its a method entry point of  the application and its demands a widget MyApp is a class became widget by extending Stateless abstruct class for whitch its need to override build method
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("home screen"),
        leading: Icon(
          Icons.home,
          color: Colors.black12,
          size: 40,
        ), //Icon constructor Icons class home static mathod
      ),
      body: Row(
        children: [
          Text(
            'home',
            style: TextStyle(//we cant use TextStyle as widget couse its not a widget its a diagonosticable helper of a widget
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'home',
            style: TextStyle(//we cant use TextStyle as widget couse its not a widget its a diagonosticable helper of a widget
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold
            ),
          ),
          Icon(Icons.access_alarms_rounded),
        ],
      ),
    );
  }
}
