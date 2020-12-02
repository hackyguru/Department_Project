import 'package:dept_project/profile.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';

class navigation extends StatefulWidget {
  int _currentindex;
  navigation(this._currentindex);
  @override
  _navigationState createState() => _navigationState(_currentindex);
}

class _navigationState extends State<navigation> {
  int _currentindex;
  _navigationState(this._currentindex);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentindex,
        selectedItemColor:
            Color(0xff730C99), //Colors.teal[800], //Color(0xff3257A6),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ), //Color(0xff3257A6)),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'Posture',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
            switch (_currentindex) {
              case 0:
                setState(() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => dashBoard()));
                  //Navigator.pushReplacementNamed(context, 'home');
                });
                break;
              case 1:
                setState(() {
//                  Navigator.pushReplacement(
//                      context,
//                      MaterialPageRoute(
//                          builder: (BuildContext context) => search()));
                  //Navigator.pushReplacementNamed(context, 'createPost');
                });
                break;
              case 2:
                setState(() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => profile()));
                  //Navigator.pushReplacementNamed(context, 'createPost');
                });
                break;
            }
          });
        });
  }
}
