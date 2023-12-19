import 'dart:js_util';

import 'package:flutter/material.dart';

class scr1 extends StatefulWidget {
  const scr1({super.key});

  @override
  State<scr1> createState() => _nameState();
}

class _nameState extends State<scr1> {
  bool xxx = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child:Text("chatter app" )),),
        body: ListView(children: [
         Divider(),
          Stack(
            children: [
              Image.asset(
                "book-img.jpg",
                width: 600,
                height: 500,
                fit: BoxFit.fill,
              ),
            ],
          ),
         
           ] ),
          );
        
  }
}
