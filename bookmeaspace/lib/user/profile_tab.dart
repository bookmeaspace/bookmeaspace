import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;
import 'package:app/components/profile.dart';


class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() {
    return _ProfileTabState();
  }
}

class Profile {
  String email;
  String name;
  String phone;
  String permissions;

  Profile({this.email, this.name, this.phone, this.permissions});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
      permissions: json['permissions'],
    );
  }
}

class _ProfileTabState extends State<ProfileTab> {
  String email = "jayson@gmail.com";



  Future<Profile> fetchUser() async {
    final response = await http.get('https://bookmea.space/api/getUsers/');
    if (response.statusCode == 200) {
      return Profile.fromJson(json.decode(response.body));
    }
    else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  List<String> profile;



  Future<List<String>> getStringList(Future<Profile> p) async {
    Profile completed = await p;
    List<String> l = new List();
    l.add(completed.name);
    l.add(completed.email);
    l.add(completed.phone);
    l.add(completed.permissions);
    return l;
  }


  @override
  void initState() {
    super.initState();
    getList();
  }



  void getList() async {
    final holidays = await getStringList(fetchUser());

    setState(() {
      this.profile = holidays;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            final prof = profile[index];
            return ListTile(
              title: Text(prof),
              subtitle: Text(prof),
            );
          },
        ),
      ),
    );
  }
}
