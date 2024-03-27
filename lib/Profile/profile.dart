import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tendertouchdup/Login/Login.dart';
import 'package:tendertouchdup/Profile/Model/profileResponse.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> profileState();
}
class profileState extends State {
  final DioClient _dioClient = DioClient();
  SharedPreferences? logindata;
  late int userid;
  final Color _color = Color(0xff11AE93);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: _color,
    appBar: AppBar(
      title:Text('Profile',style: GoogleFonts.montserrat(
        fontSize: 22,
        color: Colors.white,
      ),),
      backgroundColor: _color,
      actions: [
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
          },
        ),
        const SizedBox(width: 20,),
      ],
    ),
    body: SafeArea(
        child: FutureBuilder<ProfileResponseModel?>(
         future: _dioClient.ViewProfileModel(),
          builder: (context,snapshot) {
            if (!snapshot.hasData) {
             return Center(
                 child: Container(
                   width: 50,
                   height: 50,
                   child: CircularProgressIndicator(
                     backgroundColor: Colors.white,
                     color: Colors.lightGreenAccent,
                   ),
                 ));
            }
            else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Container(
                  //   padding: EdgeInsets.only(left: 50,bottom: 50),
                  //   width: 400,
                  //   child: Text('Profile',style: GoogleFonts.robotoCondensed(
                  //     fontSize: 25,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.white,
                  //   ),),
                  // ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colors.white
                      ),
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/person.png',),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(snapshot.data!.username, style: GoogleFonts.robotoCondensed(
                      color: Colors.white, fontSize: 20),),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: 250,
                    height: 45,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.numbers_sharp),
                        SizedBox(width: 20,),
                        Text(snapshot.data!.useId.toString(), style: GoogleFonts.roboto(fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: 250,
                    height: 45,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.phone),
                        SizedBox(width: 20,),
                        Text(snapshot.data!.userPhone, style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: 250,
                    height: 45,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.mail),
                        SizedBox(width: 20,),
                        Text(snapshot.data!.userEmail, style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: 250,
                    height: 150,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.gps_fixed),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snapshot.data!.address,
                                style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
          }
          }
        ),),
  );
  }
}