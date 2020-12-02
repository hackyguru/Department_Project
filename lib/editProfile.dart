import 'package:dept_project/profile.dart';
import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  String _dropdown;
  List _gender = [
    'Male',
    'Female',
    'Others',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => profile()));
            }),
        title: Text('Edit Profile'),
        actions: [IconButton(icon: Icon(Icons.check), onPressed: () {})],
        backgroundColor: Color(0xff730C99),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/profile_picture.jpg'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  FlatButton(
                      //onPressed: openGallery,
                      child: Text(
                    'Change profile photo',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff9152f8),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    //controller: name,
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  TextFormField(
                    //controller: mobile,
                    decoration: InputDecoration(
                      labelText: "Mobile Number",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  TextFormField(
                    //controller: bio,
                    decoration: InputDecoration(
                      labelText: "Address",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  TextFormField(
                    //controller: age,
                    decoration: InputDecoration(
                      labelText: "Age",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.035),
                  Row(
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(fontSize: 17.0, color: Colors.black),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: DropdownButton(
                          hint: Text("Choose Gender"),
                          value: _dropdown,
                          onChanged: (val) {
                            setState(() {
                              _dropdown = val;
                            });
                          },
                          items: _gender.map((val) {
                            return DropdownMenuItem(
                              value: val,
                              child: Text(val),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
