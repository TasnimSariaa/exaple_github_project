import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp());
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 35,
          ),
        ),
        titleSpacing: 30,
        //centerTitle: true,
        toolbarHeight: 70,
        elevation: 70,
        toolbarOpacity: 1,
        backgroundColor: Colors.blueGrey,
      ),
      body: ImageFeed(),
    );

  }
}

class ImageFeed extends StatelessWidget {
  const ImageFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;
        final itemCount = 10;

        return isPortrait
            ? Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  width: 390,
                  height: 390,
                  child: CircleAvatar(
                    radius: 300,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1564569918956-2cf8a82eb1e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80',
                    ),
                  ),

                ),
                SizedBox(
                  height: 50,
                  child: Text("John Doe", style: TextStyle(color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                //Divider(),
                SizedBox(
                  height: 75,
                  width: 377,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Text(
                          'I want to express my sincere gratitude for this Flutter course. It has been an incredible journey so far, and I am excited to apply what I have learned to make a positive impact on my life. JazakAllah for this wonderful opportunity.'
                      ),
                    ],
                  ),
                ),
                Scrollbar(
                    child: SizedBox(
                      height: 700,
                      width: 400,

                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          //crossAxisSpacing: 1.8,
                          childAspectRatio: 1,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(3),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://images.unsplash.com/photo-1459664018906-085c36f472af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.fill,
                                ),
                                //SizedBox(height: 2),
                              ],
                            ),
                          );
                        },
                      ),
                    )),

                //leading: ImageIcon
              ],
            ),
          ),
        )
            : Center(
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 340,
                  height: 340,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1564569918956-2cf8a82eb1e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80',
                    ),
                  ),

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(
                      height: 50,
                      child: Text("John Doe", style: TextStyle(color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(
                      height: 72,
                      width: 377,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text(
                              'I want to express my sincere gratitude for this Flutter course. It has been an incredible journey so far, and I am excited to apply what I have learned to make a positive impact on my life. JazakAllah for this wonderful opportunity.'),
                        ],
                      ),
                    ),
                    Scrollbar(
                        child: SizedBox(
                          height: 700,
                          width: 400,

                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1,
                            ),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.all(3),
                                child: Column(
                                  children: [
                                    Image.network(
                                      'https://images.unsplash.com/photo-1459664018906-085c36f472af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
                                      width: 120,
                                      height: 120,
                                      fit: BoxFit.fill,
                                    ),
                                    //SizedBox(height: 2),
                                  ],
                                ),
                              );
                            },
                          ),
                        )),

                    //leading: ImageIcon
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

