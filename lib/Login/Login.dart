// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quickalert/quickalert.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:tendertouchdup/Admin/AdminHome.dart';
// import 'package:tendertouchdup/Login/Model/LoginRequest.dart';
// import 'package:tendertouchdup/Login/Model/LoginResponse.dart';
// import 'package:tendertouchdup/SignUp/SignUp.dart';
// import 'package:tendertouchdup/Utilities/Bottombar.dart';
// import 'package:tendertouchdup/Utilities/dioClient.dart';
// import 'package:tendertouchdup/Pages/Home.dart';
// import 'package:tendertouchdup/workspace.dart';
//
// class login extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => loginState_();
// }
//
// class loginState_ extends State<login> {
//   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
//
//   late final TextEditingController _usercontroller;
//   late final TextEditingController _passcontroller;
//
//   late SharedPreferences logindata;
//
//   bool passVisible = true;
//
//   bool usernameValidate_ = false;
//   bool passwordValidate_ = false;
//
//   final DioClient _dioClient = DioClient();
//
//   bool validateField() {
//     setState(() {
//       usernameValidate_ = _usercontroller.text.isEmpty;
//       passwordValidate_ = _passcontroller.text.isEmpty;
//
//       if (_passcontroller.text.isEmpty) {
//         passwordValidate_ = true;
//       } else {
//         passwordValidate_ = false;
//       }
//       if (_usercontroller.text.isEmpty) {
//         usernameValidate_ = true;
//       } else {
//         usernameValidate_ = false;
//       }
//       if (!RegExp(
//               r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
//           .hasMatch(_usercontroller.text)) {
//         usernameValidate_ = true;
//       } else {
//         usernameValidate_ = false;
//       }
//     });
//     return !usernameValidate_ && !passwordValidate_;
//   }
//
//   void togglePasswordView() {
//     setState(() {
//       passVisible = !passVisible;
//     });
//   }
//
//   @override
//   void initState() {
//     _passcontroller = TextEditingController();
//     _usercontroller = TextEditingController();
//     super.initState();
//     logindatacheck();
//   }
//
//   void logindatacheck()async {
//     logindata = await SharedPreferences.getInstance();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       key: _scaffoldKey,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 children : [
//                   Opacity(
//                     opacity: .4,
//                     child: Container(
//                       height: 300,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(100),
//                           bottomLeft: Radius.circular(100),
//                         ),
//                         color: Colors.blue[800],
//                       ),
//                     ),
//                   ),
//                   Opacity(
//                     opacity: .1,
//                     child: Container(
//                       height: 700,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(100),
//                           bottomLeft: Radius.circular(100),
//                         ),
//                         color: Colors.blue[800],
//                       ),
//                     ),
//                   ),
//                   Opacity(
//                     opacity: .4,
//                     child: Container(
//                       height: 400,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(100),
//                           bottomLeft: Radius.circular(100),
//                         ),
//                         color: Colors.blue[800],
//                       ),
//                     ),
//                   ),
//                   Opacity(
//                     opacity: .2,
//                     child: Container(
//                       height: 600,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(100),
//                           bottomLeft: Radius.circular(100),
//                         ),
//                         color: Colors.blue[800],
//                       ),
//                     ),
//                   ),
//                   Opacity(
//                     opacity: .3,
//                     child: Container(
//                       height: 500,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(100),
//                           bottomLeft: Radius.circular(100),
//                         ),
//                         color: Colors.blue[800],
//                       ),
//                     ),
//                   ),
//                   Container(
//                     height: 200,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomRight: Radius.circular(100),
//                         bottomLeft: Radius.circular(100),
//                       ),
//                       color: Colors.blue[800],
//                     ),
//                   ),
//                   Container(
//                     height: 100,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomRight: Radius.circular(100),
//                         bottomLeft: Radius.circular(100),
//                       ),
//                       color: Color(0x790d47a1),
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       SizedBox(height: 130,),
//                       Text(
//                         'Sign In',
//                         style: GoogleFonts.robotoCondensed(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(height: 90,),
//                       Center(
//                         child: Container(
//                           padding: EdgeInsets.only(
//                             left: 30,
//                             right: 30,
//                             top: 65,
//                             bottom: 65,
//                           ),
//                           width: 300,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(
//                                   spreadRadius: 1,
//                                   blurRadius: 30,
//                                   color: Colors.black38,
//                                 ),
//                               ]
//                           ),
//                           child: Column(
//                             children: [
//                               TextField(
//                                 controller: _usercontroller,
//                                 decoration: InputDecoration(
//                                   prefixIcon: Icon(
//                                     Icons.person,
//                                     size: 20,
//                                   ),
//                                   contentPadding:
//                                   EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide:
//                                     BorderSide(color: Colors.black, width: 1),
//                                   ),
//                                   labelText: 'User Email',
//                                   hintText: 'User Email',
//                                   errorText: usernameValidate_
//                                       ? 'please enter valid username'
//                                       : null,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               TextField(
//                                 controller: _passcontroller,
//                                 obscureText: passVisible,
//                                 decoration: InputDecoration(
//                                   suffixIcon: IconButton(
//                                       icon: Icon(passVisible
//                                           ? Icons.visibility_off
//                                           : Icons.visibility),
//                                       onPressed: () {
//                                         setState(() {
//                                           togglePasswordView();
//                                         });
//                                       }),
//                                   prefixIcon: Icon(
//                                     Icons.security,
//                                     size: 20,
//                                   ),
//                                   contentPadding:
//                                   EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide:
//                                     BorderSide(color: Colors.black, width: 1),
//                                   ),
//                                   hintText: 'Password',
//                                   labelText: 'Password',
//                                   errorText: passwordValidate_
//                                       ? 'please enter valid password'
//                                       : null,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               ElevatedButton(
//                                   child: Text('Sign In'),
//                                   style: ButtonStyle(
//                                     backgroundColor:
//                                     MaterialStateProperty.all(Colors.blue[800]),
//                                     fixedSize:
//                                     MaterialStateProperty.all<Size>(Size(150, 20)),
//                                     shape: MaterialStateProperty.all<
//                                         RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(20.0),
//                                       ),
//                                     ),
//                                   ),
//                                   onPressed: () async {
//                                     if (validateField()) {
//                                       LoginRequest Userreq = LoginRequest(
//                                         Username: _usercontroller.text,
//                                         Password: _passcontroller.text,
//                                       );
//                                       LoginResponse? retrievedUser =
//                                       await _dioClient.loginUser(login_request: Userreq);
//
//                                       if (retrievedUser != null) {
//                                         // String? username;
//                                         int? userid = retrievedUser.useId;
//                                         // username = retrievedUser.username;
//                                         // logindata.setString("login", "true");
//                                         // logindata.setString('username', username);
//                                         logindata.setInt('userid', userid);
//                                         _passcontroller.clear();
//                                         _usercontroller.clear();
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) => bottomnavbar()));
//                                       } else if (_usercontroller.text == 'admin@gmail.com'
//                                       && _passcontroller.text == '1234'){
//                                         Navigator.pushReplacement(
//                                             context, MaterialPageRoute(builder: (context) => AdminHome()
//                                         )
//                                         );
//                                       }
//                                       else {
//                                         setState(() {
//                                           usernameValidate_ = true;
//                                           passwordValidate_ = true;
//                                         });
//                                       }
//                                     }
//                                   }),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
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
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tendertouchdup/Admin/AdminHome.dart';
import 'package:tendertouchdup/Login/Login.dart';
import 'package:tendertouchdup/Login/Model/LoginRequest.dart';
import 'package:tendertouchdup/Login/Model/LoginResponse.dart';
import 'package:tendertouchdup/SignUp/SignUp.dart';
import 'package:tendertouchdup/Utilities/Bottombar.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> loginState_();
}
class loginState_ extends State {
  final Color _color = Color(0xff11AE93);
  final Color _Colorwhite = Colors.white;
  late final TextEditingController _usercontroller;
  late final TextEditingController _passcontroller;

  late SharedPreferences logindata;

  bool passVisible = true;

  bool usernameValidate_ = false;
  bool passwordValidate_ = false;

  final DioClient _dioClient = DioClient();

  bool validateField() {
    setState(() {
      usernameValidate_ = _usercontroller.text.isEmpty;
      passwordValidate_ = _passcontroller.text.isEmpty;

      if (_passcontroller.text.isEmpty) {
        passwordValidate_ = true;
      } else {
        passwordValidate_ = false;
      }
      if (_usercontroller.text.isEmpty) {
        usernameValidate_ = true;
      } else {
        usernameValidate_ = false;
      }
      if (!RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(_usercontroller.text)) {
        usernameValidate_ = true;
      } else {
        usernameValidate_ = false;
      }
    });
    return !usernameValidate_ && !passwordValidate_;
  }

  void togglePasswordView() {
    setState(() {
      passVisible = !passVisible;
    });
  }

  @override
  void initState() {
    _passcontroller = TextEditingController();
    _usercontroller = TextEditingController();
    super.initState();
    logindatacheck();
  }

  void logindatacheck()async {
    logindata = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/2,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30)
                              ,topLeft: Radius.circular(30)
                          ),
                          color: Colors.grey[400],
                        ),
                        height: MediaQuery.of(context).size.height-445.5,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ]
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height/6,
                  left: MediaQuery.of(context).size.width/3,
                  child: Image.asset('assets/logo.png',
                    width: 130,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height/3.5,
                  left: MediaQuery.of(context).size.width/9,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _Colorwhite,
                    ),
                    padding: EdgeInsets.all(35),
                    height: MediaQuery.of(context).size.height/2.6,
                    width: MediaQuery.of(context).size.width/1.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: _usercontroller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              size: 20,
                            ),
                            contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide:
                              BorderSide(color: Colors.black, width: 1),
                            ),
                            labelText: 'User Email',
                            hintText: 'User Email',
                            errorText: usernameValidate_
                                ? 'please enter valid username'
                                : null,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _passcontroller,
                          obscureText: passVisible,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(passVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    togglePasswordView();
                                  });
                                }),
                            prefixIcon: Icon(
                              Icons.security,
                              size: 20,
                            ),
                            contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide:
                              BorderSide(color: Colors.black, width: 1),
                            ),
                            hintText: 'Password',
                            labelText: 'Password',
                            errorText: passwordValidate_
                                ? 'please enter valid password'
                                : null,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            child: Text('Sign In',style: TextStyle(color: _Colorwhite),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(_color),
                              fixedSize: MaterialStateProperty.all<Size>(Size(150, 20)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            onPressed: () async {
                              if (validateField()) {
                                LoginRequest Userreq = LoginRequest(
                                  Username: _usercontroller.text,
                                  Password: _passcontroller.text,
                                );
                                LoginResponse? retrievedUser =
                                await _dioClient.loginUser(login_request: Userreq);

                                if (retrievedUser != null) {
                                  // String? username;
                                  int? userid = retrievedUser.useId;
                                  // username = retrievedUser.username;
                                  // logindata.setString("login", "true");
                                  // logindata.setString('username', username);
                                  logindata.setInt('userid', userid);
                                  _passcontroller.clear();
                                  _usercontroller.clear();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => bottomnavbar()));
                                } else if (_usercontroller.text == 'admin@gmail.com'
                                    && _passcontroller.text == '1234'){
                                  Navigator.pushReplacement(
                                      context, MaterialPageRoute(builder: (context) => AdminHome()
                                  )
                                  );
                                }
                                else {
                                  setState(() {
                                    usernameValidate_ = true;
                                    passwordValidate_ = true;
                                  });
                                }
                              }
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
