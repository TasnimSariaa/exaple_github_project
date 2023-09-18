import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()); //runApp its a method entry point of  the application and its demands a widget MyApp is a class became widget by extending Stateless abstruct class for whitch its need to override build method
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, //also its by default true
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  MySnackBar(massage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Photo Gallery",
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
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 750,
                  height: 60,
                  child: Text(
                    'Welcome to My Photo Gallery!',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 750,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Search for photos...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Scrollbar(
                    child: SizedBox(
                  height: 200,
                  width: 400,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 1.2),
                    children: [
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("pic 0 "),
                                  ));
                                },
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
                                  width: 100,
                                  height: 60,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Photo 0",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("pic 1"),
                                  ));
                                },
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
                                  width: 300,
                                  height: 60,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Photo 1",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("pic 2"),
                                  ));
                                },
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
                                  width: 300,
                                  height: 60,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Photo 2",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("pic 3"),
                                  ));
                                },
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
                                  width: 300,
                                  height: 60,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Photo 3",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("pic 4"),
                                  ));
                                },
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
                                  width: 300,
                                  height: 60,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Photo 4",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("pic 5"),
                                  ));
                                },
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
                                  width: 300,
                                  height: 60,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Photo 5",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),

                Column(
                  children: [
                    ListTile(
                      title: Text('Photo 1'),
                      subtitle: Text('Discription for Photo 1'),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          ("https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80"),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Photo 2'),
                      subtitle: Text('Discription for Photo 2'),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          ("https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80"),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Photo 3'),
                      subtitle: Text('Discription for Photo 3'),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          ("https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80"),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Photo Uploaded Successfully!"),
                          ));
                        },
                        child: Icon(Icons.upload, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(15),
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ), //leading: ImageIcon
              ],
            ),
          ),
        ));
  }
}
