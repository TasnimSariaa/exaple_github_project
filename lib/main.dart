import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<dynamic> items = ["Name2", 42, 3.14, "Hellow Developers", 123];
  int? selectedIdx;

  void showEditDeleteDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit or Delete Item"),
          actions: [
            TextButton(
              onPressed: () {
                // Open a bottom sheet for editing the item content
                Navigator.pop(context);
                showEditBottomSheet(context, index);
              },
              child: Text("Edit"),
            ),
            TextButton(
              onPressed: () {
                // Delete the item
                setState(() {
                  items.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: Text("Delete"),
            ),
          ],
        );
      },
    );
  }

  void showEditBottomSheet(BuildContext context, int index) {
    TextEditingController itemController =
    TextEditingController(text: items[index].toString());

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text("Edit Item"),
              TextFormField(
                controller: itemController,
              ),
              ElevatedButton(
                onPressed: () {
                  // Update the item with the edited content
                  setState(() {
                    items[index] = itemController.text;
                  });
                  Navigator.pop(context);
                },
                child: Text("Save"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editable List"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].toString()),
            subtitle: Text("Tap and hold to edit or delete"),
            onLongPress: () {
              showEditDeleteDialog(context, index);
            },
          );
        },
      ),
    );
  }
}
