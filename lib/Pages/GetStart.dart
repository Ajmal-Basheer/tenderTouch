// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tendertouchdup/Login/Login.dart';
// import 'package:tendertouchdup/SignUp/SignUp.dart';
//
// class getstart extends StatefulWidget {  @override
//   State<StatefulWidget> createState()=> getStartState();
// }
// class getStartState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[800],
//       body: SafeArea(
//           child: Stack(
//             children: [
//               Column(
//                 children: [
//                   SizedBox(height: 370,),
//                   ClipPath(
//                     clipper: clipper(),
//                     child: Opacity(
//                       opacity: 0.1,
//                       child: Container(
//                         width: 400,
//                         height: 300,
//                         color: Colors.white60,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   SizedBox(height: 420,),
//                   ClipPath(
//                     clipper: clipper(),
//                     child: Opacity(
//                       opacity: 0.5,
//                       child: Container(
//                         width: 400,
//                         height: 300,
//                         color: Colors.white60,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                   children : [
//                     SizedBox(height: 213,),
//                     Image.asset('assets/logo.png',
//                       width: 131,
//                     ),
//                     Text(
//                       "There is an end to cure; \nThere is no end to care",
//                       style: GoogleFonts.aBeeZee(
//                           fontSize: 18, color: Colors.white24),
//                     ),
//                     SizedBox(height: 140.265,),
//                     ClipPath(
//                       clipper: clipper(),
//                       child: Container(
//                         width: 400,
//                         height: 320,
//                         color: Colors.white,
//                         child: Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               SizedBox(height: 60,),
//                               ElevatedButton(
//                                   style: ButtonStyle(
//                                     backgroundColor: MaterialStateProperty.all(
//                                         Colors.blue[800]),
//                                     fixedSize: MaterialStateProperty.all<Size>(
//                                         Size(150, 20)),
//                                     shape: MaterialStateProperty.all<
//                                         RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(20.0),
//                                       ),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.push(context, MaterialPageRoute(
//                                         builder: (context) => login()));
//                                   },
//                                   child: Text('Sign In')),
//
//                               ElevatedButton(
//                                   style: ButtonStyle(
//                                     backgroundColor: MaterialStateProperty.all(
//                                         Colors.blue[600]),
//                                     fixedSize: MaterialStateProperty.all<Size>(
//                                         Size(150, 20)),
//                                     shape: MaterialStateProperty.all<
//                                         RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(20.0),
//                                       ),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.push(context, MaterialPageRoute(
//                                         builder: (context) => SignUp()));
//                                   },
//                                   child: Text('Sign Up')),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ]
//               ),
//             ],
//           )),
//     );
//   }
// }
// class clipper extends  CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path()
//       ..lineTo(0, size.height) // Start at the bottom-left corner
//       ..lineTo(size.width, size.height) // Bottom-right corner
//       ..lineTo(size.width, 130) // Top-right corner
//       ..quadraticBezierTo(size.width / 2, 3 / size.height / 3, 0, 130,);
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tendertouchdup/Login/Login.dart';
import 'package:tendertouchdup/SignUp/SignUp.dart';

class getstart extends StatefulWidget {  @override
State<StatefulWidget> createState()=> getStartState();
}
class getStartState extends State {
  final Color _color = Color(0xff11AE93);
  final Color _Colorwhite = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: SafeArea(
          child: Stack(
            children: [
              Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/2,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/logo.png',
                            width: 131,
                          ),
                          Text(
                            "There is an end to cure; \nThere is no end to care",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 18, color: Colors.white24),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30)
                            ,topLeft: Radius.circular(30)
                        ),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height-445.5,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(_color),
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(180, 30)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => login()));
                              },
                              child: Text('Sign In',style: TextStyle(color: _Colorwhite),)),

                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(_color),
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(180, 30)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => SignUp()));
                              },
                              child: Text('Sign Up',style: TextStyle(color: _Colorwhite),)),
                        ],
                      ),
                    ),
                  ]
              ),
            ],
          )),
    );
  }
}
