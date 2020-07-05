import 'package:flutter/cupertino.dart';

class BookingTab extends StatefulWidget {
  @override
  _BookingTabState createState() {
    return _BookingTabState();
  }
}

class _BookingTabState extends State<BookingTab> {
  //query api for all booking info to be rendered and; stored as list to be rendered as booking component
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Bookings'),
        ),
      ],
    );
  }
}
