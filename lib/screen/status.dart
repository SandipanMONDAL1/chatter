import 'package:chatter/screen/call-list.dart';
import 'package:chatter/screen/call.dart';
import 'package:chatter/screen/media.dart';
import 'package:chatter/screen/search.dart';
import 'package:chatter/screen/status.dart';
import 'package:flutter/material.dart';

import 'home2.dart';

class status extends StatefulWidget {
 final name;
  status({super.key,this.name});

  @override
  State<status> createState() => _home2State();
}

class _home2State extends State<status> {
  final name;
  _home2State({this.name});
  var xxx = false;
 List<String> data=["ram","seeta","geeta","krishna","deepak","raj","rahul","rohan","ronit","susmita","preeti","pryanka","puja","rohani"];
  List<String> img=["g.jpg","g-1.jpg"];
  var ind=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Center(child: Text("chatter app")),
            actions: [
              Align(
                alignment: FractionalOffset.centerRight,
                child: TextButton(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => search()));
                    }),
              ),
            ],
            backgroundColor: Colors.blue,
           
          ),
          drawer: Drawer(
              child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Expanded(
                          child: CircleAvatar(
                        backgroundImage: AssetImage("g.jpg"),
                        radius: 150,
                      )),
                      Center(
                        child: Text(
                          widget.name,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  )),
              Divider(),
              Center(
                child: Text(
                  "ACTIVITY",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Divider(),
              Divider(),
              Center(
                child: Text(
                  "PROFILE",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Divider(),
              Divider(),
              Center(
                child: Text(
                  "LOGOUT",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )),
          bottomNavigationBar: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home2(name:widget.name,)));
                    },
                    child: Icon(Icons.home)),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => call(name:widget.name,)));
                    },
                    child: Icon(Icons.call)),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => status(name:widget.name)));
                    },
                    child: Icon(Icons.person)),
              ],
            ),
          ),
          body: media(),
        );
  }
}


