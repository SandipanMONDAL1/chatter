import 'dart:js_util';

import 'package:flutter/material.dart';


import 'package:chatter/screen/home2.dart';

import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _nameState();
}

class _nameState extends State<login> {
  bool xxx = false;
  var name = "";
  var email = "";
  var password = "";

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

 ditals(name, email, password) {
    this.name = name;
    this.email = email;
    this.password = password;



  }

  var formkey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    setState(() {
                      xxx = (xxx == true) ? false : true;
                    });
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
                      backgroundImage: NetworkImage(" "),
                      radius: 150,
                    )),
                    Center(
                      child: Text(
                        "NAME",
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
        body:Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blue,Colors.purple])),
          child: 
         ListView(children: [
          Divider(),
          Visibility(
            child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: new InputDecoration.collapsed(
                    hintText: "enter your search",
                  ),
                ),
              ),
            ),
            visible: xxx,
          ),
          Stack(
            children: [
              
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXrInVl4ROpuEAKjF8NcsB05Dfqzf2OiRD7nTYgxle-g&usqp=CAU&ec=48600113",
                width: 550,
                fit: BoxFit.fill,
              ),

            ],
          ),
          Center(
            child: Text(
              "HURRY NOW !!!",
              style: TextStyle(fontSize: 35, color: Colors.orange),
            ),
          ),
          Container(
            
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: "name",
                              labelStyle: TextStyle(fontSize: 20)),
                          controller: namecontroller,
                          validator: (value) {
                            if (value == "" || value == null) {
                              return "enter some value";
                            }
                            
                          }),
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: "email",
                              labelStyle: TextStyle(fontSize: 20)),
                          controller: emailcontroller,
                          validator: (value) {
                            if (value == "" || value == null) {
                              return "enter some value";
                            }
                            
                          }),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "password",
                            labelStyle: TextStyle(fontSize: 20)),
                        controller: passwordcontroller,
                        validator: (value) {
                          if (value == "" || value == null) {
                            return "enter some value";
                          }
                          
                        },
                      ),
                      Divider(),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                var nam=namecontroller.text;
                                ditals(
                                    namecontroller.text,
                                    emailcontroller.text,
                                    passwordcontroller.text);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  home2(name: nam,)));

                                setState(() {});
                              },
                              child: Text("sineup"),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                var nam=namecontroller.text;
                                ditals(
                                    namecontroller.text,
                                    emailcontroller.text,
                                    passwordcontroller.text);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  home2(name: nam)));
                              },
                              child: Text("login"),
                            ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ])
        ,)
      );
  }
}
