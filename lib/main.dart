import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class TodoItem {
  String title;
  String description;

  TodoItem(this.title, this.description);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  List<TodoItem> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.search,
            color: Colors.blue,
          )
        ],
        backgroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Flexible(
            flex: 20,
            child: Container(
              // padding: const EdgeInsets.all(16.0),
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        hintText: 'Add title',
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextField(
                      controller: descriptionController,
                      decoration: const InputDecoration(
                        hintText: 'Add description',
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        final title = titleController.text;
                        final description = descriptionController.text;
                        if (title.isNotEmpty) {
                          todos.add(TodoItem(title, description));
                          titleController.clear();
                          descriptionController.clear();
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: Text('Add'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 55,
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final item = todos[index];
                return Container(
                  margin: EdgeInsets.all(4),
                  child: ListTile(
                    tileColor: Colors.black12,
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    title: Text(item.title),
                    trailing: Icon(Icons.arrow_forward),
                    subtitle: Text(item.description),
                    onLongPress: () {
                      _showEditDeleteDialog(context, item, index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showEditDeleteDialog(BuildContext context, TodoItem item, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert',style: TextStyle(fontWeight: FontWeight.bold),),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _showEditBottomModalSheet(context, item, index);
                  },
                  child: Text('Edit',style: TextStyle(color: Colors.blue),),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      todos.removeAt(index);
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Delete',style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
  void _showEditBottomModalSheet(BuildContext context, TodoItem item, int index) {
    String editTitle = item.title;
    String editDescription = item.description;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            height: 300,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextField(
                    controller: TextEditingController(text: item.title),
                    onChanged: (text) {
                      editTitle = text;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Update title',
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: TextField(
                    controller: TextEditingController(text: item.description),
                    onChanged: (text) {
                      editDescription = text;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Update description',
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      todos[index].title = editTitle;
                      todos[index].description = editDescription;
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Edit done'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }



}