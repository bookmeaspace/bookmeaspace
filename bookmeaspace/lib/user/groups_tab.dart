import 'package:flutter/cupertino.dart';

class GroupsTab extends StatefulWidget {
  @override
  _GroupsTabState createState() {
    return _GroupsTabState();
  }
}

class _GroupsTabState extends State<GroupsTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Search'),
        ),
      ],
    );
  }
}
