import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udonote/createList.dart';

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodoState(),);
  }
}

class TodoState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  
    return _TodoState();
  }
}

class _TodoState extends State<TodoState> {
  List<String> _todoItems = [];
// This will be called each time the + button is pressed
  void _addTodoItem(String data) {
    setState(() {
      _todoItems.add(data);
    });
  }


  Widget _buildTodoList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if(index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index]);
        }
      },
    );
  }



 
  Widget _buildTodoItem(String todoText) {
    return ListTile(
      title: Container(child:Text(todoText)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Today",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ))
        ],
        leading: IconButton(
          icon: Icon(
            Icons.dehaze,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: _buildTodoList()
      ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () async {
          final data = await Navigator.push(context,MaterialPageRoute(builder: (context) => CreateList(),
         ));
         _addTodoItem(data);
        },
      ),
    );
  }
}
