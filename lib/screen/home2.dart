import 'package:chatter/screen/call.dart';
import 'package:chatter/screen/friend.dart';
import 'package:chatter/screen/group.dart';
import 'package:chatter/screen/search.dart';
import 'package:chatter/screen/status.dart';
import 'package:flutter/material.dart';

class home2 extends StatefulWidget {
  final name;
  home2({super.key, this.name});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  final name;
  _home2State({this.name});
  var xxx = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
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
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.chat_rounded)),
              Tab(icon: Icon(Icons.family_restroom)),
            ]),
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
                        backgroundImage:AssetImage("g.jpg"),
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
                          MaterialPageRoute(builder: (context) => call(name: widget.name,)));
                    },
                    child: Icon(Icons.call)),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => status(name: widget.name,)));
                    },
                    child: Icon(Icons.person)),
              ],
            ),
          ),
          body: TabBarView(children: [
           friend(),
           group(),
          ]),
        ));
  }
}
