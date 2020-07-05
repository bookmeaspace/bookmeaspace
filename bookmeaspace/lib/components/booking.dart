//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class Booking extends StatelessWidget {
//  Booking({Key key, this.name, this.description, this.group_id})
//      : super(key: key);
//  final String name;
//  final String description;
//  final String group_id;
//
//  Widget build(BuildContext context) {
//    return Container(
//        padding: EdgeInsets.all(2), height: 120,
//        child: Card(
//            child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
//              Image.asset("assets/appimages/" +image), Expanded(
//                  child: Container(
//                      padding: EdgeInsets.all(5), child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                    children: <Widget>[
//
//                      Text(this.name, style: TextStyle(fontWeight:
//                      FontWeight.bold)), Text(this.description),
//                      Text("Price: " + this.price.toString()),
//                    ],
//                  )
//                  )
//              )
//            ]
//            )
//        )
//    );
//  }
//}