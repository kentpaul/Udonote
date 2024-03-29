import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udonote/createList.dart';

import 'data.dart';

class TodoState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TodoState();
  }
}

class _TodoState extends State<TodoState> {
  List<String> _data = ["John Doe","Doe Jon","John Doe","Doe Jon","John Doe","Doe Jon","John Doe","Doe Jon","John Doe","Doe Jon"];
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            child: Text(
              "Logo Here",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
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
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlineButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.home,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: OutlineButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/todo',
                        );
                      },
                      child: Icon(Icons.note_add),
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
              Expanded(child: Data(_data))
            
          ],
          ),
        ));
  }
}
