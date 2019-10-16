import 'package:flutter/material.dart';
import 'data.dart';

class MapState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MapState();
  }
}

class _MapState extends State<MapState> {
 
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
                      onPressed: () {
                        Navigator.pushNamed(context,'/home',);
                      },
                      child: Icon(
                        Icons.home,
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
                      color: Colors.red,),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Expanded(child: Text("Google Map"))
            
          ],
          ),
        ));
  }
}
