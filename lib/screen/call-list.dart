import 'package:flutter/material.dart';

class callist extends StatefulWidget {
  const callist({super.key});

  @override
  State<callist> createState() => _nameState();
}

class _nameState extends State<callist> {
  List<String> data=["ram","seeta","geeta","krishna","deepak","raj","rahul","rohan","ronit","susmita","preeti","pryanka","puja","rohani"];
  List<String> img=["g.jpg","g-1.jpg"];
  
  var ind=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return  Column(children: [Divider(),
        Row(children: [
          SizedBox(width: 10,),
          CircleAvatar(backgroundImage: AssetImage(img[ind=(ind==0)?1:0]),radius: 30,),
          
          Expanded(child: 
          Center(child: 
             
          Text(data[index],style: TextStyle(fontSize: 25),),
         )
          
        ),
         
         ElevatedButton(child: Icon(Icons.add_call),onPressed: (){}), 
          



          SizedBox(
            width: 18,
          )
        
        
        ],
        
        ) ,
       
        ],);
      },
      
    ),
   
    );
  }
}