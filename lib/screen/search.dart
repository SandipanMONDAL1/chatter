import 'package:chatter/screen/call-list.dart';
import 'package:chatter/screen/call.dart';
import 'package:chatter/screen/status.dart';
import 'package:flutter/material.dart';

import 'home2.dart';

class search extends StatefulWidget {
 
  
  search({super.key});

  @override
  State<search> createState() => _home2State();
}

class _home2State extends State<search> {

  var xxx = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
           
            actions: [
             
              SizedBox(width: 45,),
              Expanded(child: 
                 TextField(
                        decoration: InputDecoration(
                            labelText: "serch something",
                            labelStyle: TextStyle(fontSize: 22,color: Colors.white)),
                       
                      ),
              ),
               
              TextButton(onPressed: (){

              }, child: Icon(Icons.search,color: Colors.white,))
               
              
              ],
            
            
         
            backgroundColor: Colors.blue,
           
          ),
        
         
          body: Scaffold()
         
          
        );
  }
}
