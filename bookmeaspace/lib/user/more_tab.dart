import 'package:flutter/cupertino.dart';

class MoreTab extends StatefulWidget {
  @override
  _MoreTabState createState() {
    return _MoreTabState();
  }
}

class _MoreTabState extends State<MoreTab> {
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
