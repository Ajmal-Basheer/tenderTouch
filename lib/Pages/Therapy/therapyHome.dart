import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tendertouchdup/Pages/Therapy/therapyResponse.dart';
import 'package:tendertouchdup/Pages/Therapy/therapyVideo.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class therapyHome extends StatefulWidget {  @override
  State<StatefulWidget> createState() => therapyHomeState();
}
class therapyHomeState extends State {
  final DioClient _dioClient = DioClient();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor:  Colors.blue[800],
     body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: Text('Therapy',style: GoogleFonts.abel(
               textStyle: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 25,
               ),),),
            ),
             FutureBuilder<List<TherapyDatum>>
               (future: _dioClient.therapyList(),
                builder: (context,snapshot){
                 if(!snapshot.hasData){
                  return CircularProgressIndicator();
                 }else{
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                         child: ListView.builder(
                             itemCount: snapshot.data!.length,
                             itemBuilder: (context,index){
                             return Card(
                               elevation: 30,
                               child: ListTile(
                                 title: Text(snapshot.data![index].videoName),
                                 leading: Image.asset('assets/video.png'),
                                 subtitle: Text(snapshot.data![index].videoDescription),
                                 onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                 therapyVideo(snapshot.data![index].videoLink,snapshot.data![index].videoName),
                                 ));
                                 },
                               ),
                             );
                             }),
                          height: 750,
                          padding: EdgeInsets.all(20),
                        ),
                      ],
                    ),
                  );
                 }
                }
             ),
           ],
         ),
       ),
     ),
   );
  }
}
