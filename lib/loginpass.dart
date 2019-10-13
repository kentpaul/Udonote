import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  Icon fieldicon;
  String hinttext;
  
  PasswordInputField(this.fieldicon, this.hinttext);
   @override
  Widget build(BuildContext context) {
    return
       Container(
                  width: 240,
                  child: Material(
                    borderRadius: BorderRadius.circular(11.0),
                    elevation: 11.0,
                    color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: fieldicon,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(11.0),
                                bottomRight: Radius.circular(11.0) ,
                                
                                ),
                            ),
                            width: 200,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: hinttext,
                                
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                    ),
                            ),
                          ),
                          
                        ],
                      ),
                  ),
                   
                );
      
    
  }
}