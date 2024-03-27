// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tendertouchdup/Admin/Hospital%20Manage/HospitalCare.dart';
//
// class AdminHome extends StatefulWidget {  @override
//   State<StatefulWidget> createState() => AdminHomeState();
// }
// class AdminHomeState extends State {   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               children: [
//                 Container(
//                   height: 200,
//                   child: Image.asset('assets/DONATE1.jpg', fit: BoxFit.cover),
//                 ),
//                 SizedBox(height: 15),
//                 Text(
//                   'Admin Dashboard',
//                   style: GoogleFonts.abel(
//                     textStyle: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                 height: 140,
//                   width: 160,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.blue[900],
//                   ),
//                   child:
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             child: Text(
//                               'AMBULANCE',
//                               style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(bottom: 10),
//                             child: Text('Management',style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal)
//                             ),
//                             ),
//                           ),
//                           Container(
//                               padding: EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(100),
//                                   color: Colors.blue[700]
//                               ),
//                               width: 50,
//                               height: 50,
//                               child: Image.asset('assets/AMBULANCE1.png',),
//                           )
//                         ],
//                       ),
//                 ),
//                 SizedBox(width: 20,),
//                 GestureDetector(
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>doctorHome()));
//                   },
//                   child: Container(
//                   height: 140,
//                     width: 160,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.blue[900],
//                     ),
//                     child:
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               child: Text(
//                                 'HOSPITAL',
//                                 style: GoogleFonts.raleway(
//                                   textStyle: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               padding: EdgeInsets.only(bottom: 10),
//                               child: Text('Management',style: GoogleFonts.raleway(
//                                   textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal)
//                               ),
//                               ),
//                             ),
//                             Container(
//                                 padding: EdgeInsets.all(10),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(100),
//                                     color: Colors.blue[700]
//                                 ),
//                                 width: 50,
//                                 height: 50,
//                                 child: Image.asset('assets/HOSPITAL1.png',),
//                             )
//                           ],
//                         ),
//                   ),
//                 ),
//               ],
//             ),
//                 SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                 height: 140,
//                   width: 160,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.blue[900],
//                   ),
//                   child:
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             child: Text(
//                               'THERAPY',
//                               style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(bottom: 10),
//                             child: Text('Management',style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal)
//                             ),
//                             ),
//                           ),
//                           Container(
//                               padding: EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(100),
//                                   color: Colors.blue[700]
//                               ),
//                               width: 50,
//                               height: 50,
//                               child: Image.asset('assets/THERAPY.png',),
//                           )
//                         ],
//                       ),
//                 ),
//                 SizedBox(width: 20,),
//                 Container(
//                 height: 140,
//                   width: 160,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.blue[900],
//                   ),
//                   child:
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             child: Text(
//                               'DONATION',
//                               style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(bottom: 10),
//                             child: Text('Management',style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal)
//                             ),
//                             ),
//                           ),
//                           Container(
//                               padding: EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(100),
//                                   color: Colors.blue[700]
//                               ),
//                               width: 50,
//                               height: 50,
//                               child: Image.asset('assets/donation.png',),
//                           )
//                         ],
//                       ),
//                 ),
//               ],
//             ),
//                 SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                 height: 140,
//                   width: 160,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.blue[900],
//                   ),
//                   child:
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             child: Text(
//                               'FELLOWSHIP',
//                               style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(bottom: 10),
//                             child: Text('Management',style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal)
//                             ),
//                             ),
//                           ),
//                           Container(
//                               padding: EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(100),
//                                   color: Colors.blue[700]
//                               ),
//                               width: 50,
//                               height: 50,
//                               child: Image.asset('assets/FELLOWSHIP.png',),
//                           )
//                         ],
//                       ),
//                 ),
//                 SizedBox(width: 20,),
//                 Container(
//                 height: 140,
//                   width: 160,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.blue[900],
//                   ),
//                   child:
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             child: Text(
//                               'VOLUNTEER',
//                               style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(bottom: 10),
//                             child: Text('Management',style: GoogleFonts.raleway(
//                                 textStyle: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal)
//                             ),
//                             ),
//                           ),
//                           Container(
//                               padding: EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(100),
//                                   color: Colors.blue[700]
//                               ),
//                               width: 50,
//                               height: 50,
//                               child: Image.asset('assets/VOLUNTEER.png',),
//                           )
//                         ],
//                       ),
//                 ),
//               ],
//             ),
//                   ],
//                 ),
//           ),
//         )
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Hospital Manage/HospitalCare.dart';


class AdminHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> AdminHomeState();
}
class AdminHomeState extends State {
  final Color _color = Color(0xff11AE93);
  final Color _Colorwhite = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.asset('assets/palicare.png',),
              ),
              Text(
                'Admin Dashboard',
                style: GoogleFonts.abel(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _color,
                    ),
                    height: MediaQuery.of(context).size.width/2.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          'AMBULANCE',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('Management',style: GoogleFonts.raleway(
                            textStyle: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)
                        ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: _Colorwhite
                            ),
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/AMBULANCE1.png',),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => doctorHome()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _color,
                      ),
                      height: MediaQuery.of(context).size.width/2.5,
                      width: MediaQuery.of(context).size.width/2.5,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Text(
                            'HOSPITAL',
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text('Management',style: GoogleFonts.raleway(
                              textStyle: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)
                          ),
                          ),
                          SizedBox(height: 10,),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70),
                                  color: _Colorwhite
                              ),
                              width: 80,
                              height: 80,
                              child: Image.asset('assets/HOSPITAL1.png',),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _color,
                    ),
                    height: MediaQuery.of(context).size.width/2.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          'THERAPY',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('Management',style: GoogleFonts.raleway(
                            textStyle: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)
                        ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: _Colorwhite
                            ),
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/THERAPY.png',),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _color,
                    ),
                    height: MediaQuery.of(context).size.width/2.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          'FELLOWSHIP',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('Management',style: GoogleFonts.raleway(
                            textStyle: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)
                        ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: _Colorwhite
                            ),
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/FELLOWSHIP.png',),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _color,
                    ),
                    height: MediaQuery.of(context).size.width/2.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          'DONATION',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('Management',style: GoogleFonts.raleway(
                            textStyle: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)
                        ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: _Colorwhite
                            ),
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/donation.png',),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _color,
                    ),
                    height: MediaQuery.of(context).size.width/2.5,
                    width: MediaQuery.of(context).size.width/2.5,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          'VOLUNTEER',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('Management',style: GoogleFonts.raleway(
                            textStyle: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)
                        ),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: _Colorwhite
                            ),
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/VOLUNTEER.png',),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
