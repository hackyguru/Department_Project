import 'package:dept_project/bottomnavigation.dart';
import 'package:flutter/material.dart';

import 'editProfile.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "CareTaker",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor:
            Color(0xff730C99), //Color(0xff3257A6), //Color(0xff3257A6),
      ),
      bottomNavigationBar: navigation(2),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "assets/profile_picture.jpg",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Care Taker",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                    ),
                    RaisedButton(
                        color: Color(0xff730C99), //Color(0xff3257A6),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      editProfile()));
                        })
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
                height: 0.4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
