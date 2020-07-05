import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert' show json;

class Profile_view extends StatelessWidget {
  Profile_view({Key key, this.display})
      : super(key: key);
  final String display;

//  final String description;
//  final String group_id;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        color: Colors.lightGreenAccent,
        child: Text(this.display),
    );
  }
}