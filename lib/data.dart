import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  final List<String> _data;
  Data(this._data);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[Row(children: <Widget>[Icon(Icons.account_circle),Text(_data[index], style: TextStyle()),],),
          Image.asset('assets/images/download.jpg'),
          Row(children: <Widget>[Expanded(child: OutlineButton(child: Icon(Icons.thumb_up),onPressed: (){},),),Expanded(child: OutlineButton(child: Text("View Adventure"),onPressed: (){},),)],)
         
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: _data.length,
    );
  }
}