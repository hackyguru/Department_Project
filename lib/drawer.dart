import 'package:dept_project/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navdrawer extends StatefulWidget {
  @override
  _navdrawerState createState() => _navdrawerState();
}

class _navdrawerState extends State<navdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          color: Color(0xff730C99), //Colors.teal[800], //Color(0xff3257A6),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: double.infinity,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => settings()));
                },
              ),
              ListTile(
                  leading: Icon(Icons.logout),
                  title: Text(
                    "logout",
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    //await _auth.signOut();
                  }),
            ],
          ),
        ),
      ],
    ));
  }
}
