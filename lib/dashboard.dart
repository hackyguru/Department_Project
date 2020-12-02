import 'package:dept_project/bottomnavigation.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class dashBoard extends StatefulWidget {
  @override
  _dashBoardState createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  List<String> romms = [
    'assets/bedroom.jpg',
    'assets/hall.jpg',
    'assets/restroom.jpg'
  ];
  List<String> roomname = ['Bedroom', 'Hall', 'Restroom'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Personal Assistant",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Color(
            0xff730C99), //Colors.teal[800], //Color(0xff3257A6), //Color(0xff3257A6),
      ),
      endDrawer: navdrawer(),
      bottomNavigationBar: navigation(0),
      body: Container(
        width: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.purple,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adithya",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Age:",
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Currently in",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "BedRoom",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff730C99),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) =>
                    MyCard(romms[index], roomname[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final img;
  final roomname;
  MyCard(this.img, this.roomname);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Card(
            child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          img,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text(
                              roomname,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              ' Sree Anbalayam Charitable Trust',
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
