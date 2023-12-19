import 'package:chatter/screen/call-list.dart';
import 'package:chatter/screen/call.dart';
import 'package:chatter/screen/status.dart';
import 'package:flutter/material.dart';

import 'home2.dart';

class ditals extends StatefulWidget {
  final name;
  
  ditals({super.key,this.name});

  @override
  State<ditals> createState() => _home2State();
}

class _home2State extends State<ditals> {
 final name;
  _home2State({this.name});
  
  var xxx = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Center(child: Text(widget.name)),
            actions: [
              Align(
                alignment: FractionalOffset.centerRight,
                child: TextButton(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      xxx = (xxx == false) ? true : false;
                      setState(() {
                        
                      });
                    }),
              ),
            ],
            backgroundColor: Colors.blue,
           
          ),
         bottomNavigationBar: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              SizedBox(width: 18,),
              Expanded(child: 
                 TextFormField(
                        decoration: InputDecoration(
                            labelText: "start charting",
                            labelStyle: TextStyle(fontSize: 20)),
                       
                      ),
              ),
               
              TextButton(onPressed: (){

              }, child: Icon(Icons.send))
              
              ],
            ),
            
          ),
         
          body: Scaffold()
         
          
        );
  }
}
