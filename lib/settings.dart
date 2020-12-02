//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  //FirebaseAuth _auth = FirebaseAuth.instance;
  _onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        style: AlertStyle(
          backgroundColor: Colors.white,
          alertBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        title: "RESET LINK SENT TO MAIL",
        buttons: [
          DialogButton(
            color: Color(0xff730C99), //Colors.teal[800], //Color(0xff3257A6),
            onPressed: () {},
            child: Text(
              "CLOSE",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => dashBoard()));
            }),
        title: Center(child: Text("Personal Assistant")),
        backgroundColor:
            Color(0xff730C99), //Colors.teal[800], //Color(0xff3257A6),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
                leading: Icon(Icons.edit),
                title: Text(
                  "Change Password",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
//                  await _auth.sendPasswordResetEmail(
//                      email: _auth.currentUser.email);
                  _onAlertWithCustomContentPressed(context);
                }),
            ListTile(
                leading: Icon(Icons.help_outline_outlined),
                title: Text(
                  "About",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
//                  await _auth.sendPasswordResetEmail(
//                      email: _auth.currentUser.email);
                  _onAlertWithCustomContentPressed(context);
                }),
          ],
        ),
      ),
    );
  }
}
