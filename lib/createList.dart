import 'package:flutter/material.dart';
import 'package:udonote/todolist.dart';

class CreateListState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateListState();
  }
}

class _CreateListState extends State<CreateListState> {
  List<String> _texts = [
    "Arrive in Laguindingan Airport",
    "Laguindingan to Cagayan De Oro ",
    "Visit Gaisano Mall",
    "Visit Limketkai Mall",
    "Visit Limketkai Mall",
  ];
  Widget _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Title:"),
                    Expanded(
                      child: TextField(),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Note:"),
                    Expanded(
                      child: TextField(),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("Time:"),
                    Expanded(
                      child: TextField(),
                    )
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.all(40.0),
          );
        });
  }

  Widget listdata() {
    return Column(
      children: _texts
          .map((text) => Card(clipBehavior: Clip.antiAlias,
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: false,
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                    Text(text),
                  ],
                ),
              ))
          .toList(),
    );
  }

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
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
        automaticallyImplyLeading: false,
        title: Text(
          "Logo Here",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'/home',);
                    },
                    child: Icon(Icons.home),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    onPressed: () {},
                    child: Icon(Icons.note_add, color: Colors.red),
                  ),
                ),
                Expanded(
                  child: OutlineButton(
                    child: Icon(
                      Icons.map,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context,'/map',);
                    },
                  ),
                )
              ],
            ),
            Expanded(
              child: listdata(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _showModalSheet();
        },
      ),
    );
  }
}
