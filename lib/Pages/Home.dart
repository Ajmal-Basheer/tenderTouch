// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quickalert/quickalert.dart';
// import 'package:tendertouchdup/Utilities/Bottombar.dart';
//
// class Home extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 height: 200,
//                 child: Image.asset('assets/DONATE1.jpg', fit: BoxFit.cover),
//               ),
//               SizedBox(height: 15),
//               Text(
//                 'DONATE',
//                 style: GoogleFonts.inter(
//                   textStyle: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 29,
//                   ),
//                 ),
//               ),
//               Text(
//                 'it takes you to make hope possible',
//                 style: GoogleFonts.aBeeZee(
//                   textStyle: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.normal,
//                     fontSize: 13,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 4),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue[800],
//                   minimumSize: Size(270, 40),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: Text(
//                   'COME UP WITH',
//                   style: GoogleFonts.inter(
//                     textStyle: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.blue[700],
//                 ),
//                 padding: EdgeInsets.all(17),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: 400,
//                       child: Column(
//                         children: [
//                           Text(
//                             'what do you need?',
//                             style: GoogleFonts.aBeeZee(
//                               textStyle: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 10,),
//                           Container(
//                             height: 140,
//                             width: 350,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.blue[900],
//                             ),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                     padding: EdgeInsets.only(top: 28),
//                                     child: Icon(Icons.arrow_right,color: Colors.white,size: 43,)),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(top: 28),
//                                       child: Text(
//                                         'AMBULANCE',
//                                         style: GoogleFonts.raleway(
//                                           textStyle: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Text('SERVICE',style: GoogleFonts.raleway(
//                                         textStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.normal)
//                                     ),
//                                     ),
//                                     SizedBox(height: 5,),
//                                     Text('There is an end to cure,there \nis no ende to care',style: GoogleFonts.aBeeZee(
//                                         textStyle: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.normal)
//                                     ),),
//                                   ],
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Center(
//                                   child: Container(
//                                     padding: EdgeInsets.all(20),
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(70),
//                                         color: Colors.blue[700]
//                                     ),
//                                     width: 80,
//                                     height: 80,
//                                     child: Image.asset('assets/AMBULANCE1.png',),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     SizedBox(height: 10,),
//                     Container(
//                       width: 400,
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 140,
//                             width: 350,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.blue[900],
//                             ),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                     padding: EdgeInsets.only(top: 28),
//                                     child: Icon(Icons.arrow_right,color: Colors.white,size: 43,)),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(top: 28),
//                                       child: Text(
//                                         'HOSPITAL',
//                                         style: GoogleFonts.raleway(
//                                           textStyle: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Text('SERVICE',style: GoogleFonts.raleway(
//                                         textStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.normal)
//                                     ),
//                                     ),
//                                     SizedBox(height: 5,),
//                                     Text('There is an end to cure,there \nis no ende to care',style: GoogleFonts.aBeeZee(
//                                         textStyle: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.normal)
//                                     ),),
//                                   ],
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Center(
//                                   child: Container(
//                                     padding: EdgeInsets.all(20),
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(70),
//                                         color: Colors.blue[700]
//                                     ),
//                                     width: 80,
//                                     height: 80,
//                                     child: Image.asset('assets/HOSPITAL1.png',),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                     SizedBox(height: 10,),
//                     Container(
//                       width: 400,
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 140,
//                             width: 350,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.blue[900],
//                             ),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                     padding: EdgeInsets.only(top: 28),
//                                     child: Icon(Icons.arrow_right,color: Colors.white,size: 43,)),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(top: 28),
//                                       child: Text(
//                                         'THERAPY',
//                                         style: GoogleFonts.raleway(
//                                           textStyle: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Text('SERVICE',style: GoogleFonts.raleway(
//                                         textStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.normal)
//                                     ),
//                                     ),
//                                     SizedBox(height: 5,),
//                                     Text('There is an end to cure,there \nis no ende to care',style: GoogleFonts.aBeeZee(
//                                         textStyle: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.normal)
//                                     ),),
//                                   ],
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Center(
//                                   child: Container(
//                                     padding: EdgeInsets.all(20),
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(70),
//                                         color: Colors.blue[700]
//                                     ),
//                                     width: 80,
//                                     height: 80,
//                                     child: Image.asset('assets/THERAPY.png',),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ), SizedBox(height: 10,),
//                     Container(
//                       width: 400,
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 140,
//                             width: 350,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.blue[900],
//                             ),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                     padding: EdgeInsets.only(top: 28),
//                                     child: Icon(Icons.arrow_right,color: Colors.white,size: 43,)),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(top: 28),
//                                       child: Text(
//                                         'VOLUNTEER',
//                                         style: GoogleFonts.raleway(
//                                           textStyle: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Text('SERVICE',style: GoogleFonts.raleway(
//                                         textStyle: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.normal)
//                                     ),
//                                     ),
//                                     SizedBox(height: 5,),
//                                     Text('There is an end to cure,there \nis no ende to care',style: GoogleFonts.aBeeZee(
//                                         textStyle: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.normal)
//                                     ),),
//                                   ],
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Center(
//                                   child: Container(
//                                     padding: EdgeInsets.all(20),
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(70),
//                                         color: Colors.blue[700]
//                                     ),
//                                     width: 80,
//                                     height: 80,
//                                     child: Image.asset('assets/VOLUNTEER.png',),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//
//                   ],
//                 ),
//               ),
//               SizedBox(height: 25,),
//               Align(alignment: Alignment.center,
//                 child: Text('The end of life deserves as much beauty,',style: GoogleFonts.aBeeZee(
//                     textStyle: TextStyle(color: Colors.black),fontWeight: FontWeight.w500
//                 ),),
//               ),
//               Text('care and respect as the beginning.',style:GoogleFonts.aBeeZee(
//                   textStyle: TextStyle(color: Colors.black)
//               ),),
//               SizedBox(height: 20,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> _HomeState();
}
class _HomeState extends State {
  final Color _color = Color(0xff11AE93);
  final Color _Colorwhite = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: _color,
        title: Text('Tender Touch',style: GoogleFonts.roboto(fontSize: 20,color: _Colorwhite),),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            width: 35,
            height: 35,
            child: Icon(Icons.perm_identity,color: _color,),
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.asset('assets/palicare.png',),
              ),
              Text(
                'DONATE',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                  ),
                ),
              ),
              Text(
                'It takes you to make hope possible',
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: _color,
                  minimumSize: Size(270, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'COME UP WITH',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'What do you need?',
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                        Text('SERVICE',style: GoogleFonts.raleway(
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
                          'HOSPITAL',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('SERVICE',style: GoogleFonts.raleway(
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
                        Text('SERVICE',style: GoogleFonts.raleway(
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
                          'VOLUNTEER',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('SERVICE',style: GoogleFonts.raleway(
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
              SizedBox(height: 10,),
              Align(alignment: Alignment.center,
                child: Text('The end of life deserves as much beauty,',style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(color: Colors.black),fontWeight: FontWeight.w500
                ),),
              ),
              Text('care and respect as the beginning.',style:GoogleFonts.aBeeZee(
                  textStyle: TextStyle(color: Colors.black)
              ),),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
