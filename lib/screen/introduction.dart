import 'dart:js_util';

import 'package:chatter/screen/screen1.dart';

import 'package:flutter/material.dart';

import 'login.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _nameState();
}

class _nameState extends State<intro> {

  var formkey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: [
          scr1(),
          
          login(),
    ],
    scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),)
,
          );
        
  }
}
