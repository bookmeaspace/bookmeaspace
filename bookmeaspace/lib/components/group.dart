import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Group_view extends StatelessWidget {
  Group_view({Key key, this.name})
      : super(key: key);
  final String name;
//  final String description;
//  final String group_id;

  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.all(2),
        color: Colors.lightGreenAccent,
        child: Text(this.name),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> GroupDetails())
          );
        }
    );
  }
}
class GroupDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
