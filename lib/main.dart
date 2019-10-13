import 'package:flutter/material.dart';
import 'package:udonote/loginpass.dart';
import 'package:udonote/todolist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'UDONOTE'),
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
                
               Image.asset('assets/images/UD.png',width: 130,height: 190),
               PasswordInputField(Icon(Icons.person, color: Colors.white), 'Username'),
               PasswordInputField(Icon(Icons.lock, color: Colors.white), 'Password'),
              Container(
                width: 80,
                
                child:  RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 textColor: Colors.white,
                 onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Todo()),);
                 },
                 color: Colors.yellow,
                 child: Text('Login',
                 style: TextStyle(fontSize: 20),
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
