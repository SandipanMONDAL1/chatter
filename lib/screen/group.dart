import 'package:chatter/screen/ditals.dart';
import 'package:flutter/material.dart';

class group extends StatefulWidget {
  const group({super.key});

  @override
  State<group> createState() => _nameState();
}

class _nameState extends State<group> {
  List<String> data=["school group","friend group","collage group","boys group","girls group","family group","sports group","singing group","pubg group","freefire group","ipl group"];
  List<String> img=["gr.jpg","gru.jpg"];
  var ind=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(children: [Divider(),
         InkWell(onTap: (){

          Navigator.push(context,
          MaterialPageRoute(builder: (context) => ditals(name:data[index],)));

        },child: 
        Row(children: [
          
          CircleAvatar(backgroundImage: AssetImage(img[ind=(ind==0)?1:0]),radius: 30,),
          
          Expanded(child: 
          Column(children: [
             
          Text(data[index],style: TextStyle(fontSize: 25),),
             
          
           Text("hello i am useing chatter",style: TextStyle(fontSize: 10),),
          
          ],),
        ),
         
          Text("12:30",style: TextStyle(fontSize: 10),),

          SizedBox(
            width: 18,
          )
        
        
        ],
        
        ),
          )
        
        ],);
      },
      
    ),
    );
  }
}