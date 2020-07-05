import 'package:flutter/cupertino.dart';

class BookingTab extends StatefulWidget {
  @override
  _BookingTabState createState() {
    return _BookingTabState();
  }
}

class _BookingTabState extends State<BookingTab> {
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
