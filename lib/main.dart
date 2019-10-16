import 'package:flutter/material.dart';
import 'package:udonote/loginpass.dart';
import 'package:udonote/todolist.dart';

import 'createList.dart';
import 'map.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
       initialRoute: '/',
       routes: {
    '/': (context) => MyHomePage(),
    '/home': (context) => TodoState(),
    '/todo':(context)=> CreateListState(),
    '/map':(context)=> MapState(),
  }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      // appBar: AppBar(

      //   title: Text(widget.title),

      
      body:Container(
      
        color: Colors.red,
        child: Center(
          
          child: Container(

            width: 900,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                
               Text("Travelers Note",style: TextStyle(color: Colors.white,height: 9,fontSize: 20.0,fontWeight: FontWeight.bold),),
               PasswordInputField(Icon(Icons.person, color: Colors.white), 'Username'),
               PasswordInputField(Icon(Icons.lock, color: Colors.white), 'Password'),
              Container(
                width: 80,
                
                child:  RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 textColor: Colors.white,
                 onPressed: (){
                  Navigator.pushNamed(context,'/home',);
                 },
                 color: Colors.yellow,
                 child: Text('Login',
                 style: TextStyle(fontSize: 18),
                 ),
                 
               ),
               
               
              )
                
              ],
            )
          ),
          
        ),
        
        ),
        
      
    
   
    );
  }
}
