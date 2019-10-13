import 'package:flutter/material.dart';
import 'package:udonote/todolist.dart';

class CreateList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CreateListState();
  }
}

class CreateListState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CreateListState();
  }
}

class _CreateListState extends State<CreateListState> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add a new note",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Todo()));
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[Text("Title:"), Expanded(child: TextField(controller: myController,))],
            ),
            Row(
              children: <Widget>[
                Text("Note:"),
                Expanded(child: TextFormField())
              ],
            ),
            Row(
              children: <Widget>[Text("Date:"), Expanded(child: TextField())],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context,myController.text);
                    },
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
