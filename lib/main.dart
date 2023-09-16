//My main code that I submitted for the live test on time on the repository:example_github_project and branch:practice

//In hurry I pushed the other branch link please check the branch:practice

//https://github.com/TasnimSariaa/exaple_github_project/blob/practice/lib/main.dart

//please check that link I submitted on time

//As a beginner github user please consider me for the last time

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
  List<String> items = [
    'Bananas',
    'Milk',
    'Bread',
    'bag',
    'shoes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "My Shopping List",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 35,
              ),
            ),
            //titleSpacing: 90,
            centerTitle: true,
            toolbarHeight: 70,
            elevation: 70,
            toolbarOpacity: 1,
            backgroundColor: Colors.blue,
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart_rounded),
                iconSize: 35,
                onPressed: () {
                  print("Shopping");
                },
              ),
            ]),
        body: Scrollbar(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                  leading: IconButton(
                      onPressed: () {}, icon: Icon(Icons.shopping_basket)),
                );
              }),
        ));
  }
}
