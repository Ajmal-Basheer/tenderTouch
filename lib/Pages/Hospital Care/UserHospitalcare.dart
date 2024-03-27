import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tendertouchdup/Pages/Home.dart';

class hospitalcarehome extends StatefulWidget {  @override
  State<StatefulWidget> createState()=> hospitalcarehomeState();
}
class hospitalcarehomeState extends State {  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      title: Text('Hospital Care',style: TextStyle(color: Colors.white),),
       backgroundColor: Colors.blue[800],
        leading: IconButton(onPressed: (){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
  },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
     ),
   );
  }
}
