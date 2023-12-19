import 'package:flutter/material.dart';

class media extends StatefulWidget {
  const media({super.key});

  @override
  State<media> createState() => _nameState();
}

class _nameState extends State<media> {
  List<String> data=["ram","seeta","geeta","krishna","deepak","raj","rahul","rohan","ronit","susmita","preeti","pryanka","puja","rohani"];
  List<String> img=["g.jpg","g-1.jpg"];
  var ind=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return  Column(children: [Divider(),
        Row(children: [
       
          Expanded(child: 
          Center(child: 
             Text(data[index],style: TextStyle(fontSize: 25),),
             )
          ),
    
        ],) ,

        Row(children: [
       
          Expanded(child: 
             Image.asset(img[ind=(ind==0)?1:0])
          ),
    
        ],) ,
        
        Row(children: [
       
          Expanded(child: 
              TextButton(child: Icon(Icons.thumb_up),onPressed: (){}), 
          ),
            Expanded(child: 
              TextButton(child: Icon(Icons.chat),onPressed: (){}), 
          ),
            Expanded(child: 
              TextButton(child: Icon(Icons.share),onPressed: (){}), 
          ),
        ],) ,
       
        ],);
      },
      
    ),
    );
  }
}