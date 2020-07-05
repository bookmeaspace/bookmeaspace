import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/components/group.dart';

class GroupsTab extends StatefulWidget {
  @override
  _GroupsTabState createState() {
    return _GroupsTabState();
  }
}

class _GroupsTabState extends State<GroupsTab> {
  //Get Data, Dummy:
  List<Map> group_data =[
    {
      'name' : 'UBC'
    },
    {
      'name' : 'UofT'
    },
    {
      'name' : 'BCIT'
    },
    {
      'name' : 'SFU'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Groups'),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
              [
                for (var group in group_data) Group_view(name:group['name'])
              ]
//              [
//            Container(color: Colors.red, height: 150.0),
//            Container(color: Colors.purple, height: 150.0),
//            Container(color: Colors.green, height: 150.0),
//            ]
          ),
        ),
      ],
    );
  }
}
