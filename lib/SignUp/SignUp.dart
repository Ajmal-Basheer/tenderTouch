// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quickalert/quickalert.dart';
// import 'package:tendertouchdup/Login/Login.dart';
// import 'package:tendertouchdup/Pages/Home.dart';
// import 'package:tendertouchdup/SignUp/Model/SignupResponse.dart';
// import 'package:tendertouchdup/SignUp/Model/signupRequest.dart';
// import 'package:tendertouchdup/Utilities/dioClient.dart';
//
// class SignUp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => SignUpState();
// }
//
// class SignUpState extends State {
//   late final TextEditingController _nameController;
//   late final TextEditingController _PasswordController;
//   late final TextEditingController _ConfirmPasswordController;
//   late final TextEditingController _emailController;
//   late final TextEditingController _phoneController;
//   late final TextEditingController _addressController;
//
//   bool _nameValidate = false;
//   bool _passValidate = false;
//   bool _confirmValidate = false;
//   bool _emailValidate = false;
//   bool _phoneValidate = false;
//   bool _addressValidate = false;
//   bool _errorpasscontroller = false;
//   bool _erroremail = false;
//   bool _errorphone = false;
//
//   final DioClient _dioClient = DioClient();
//
//   @override
//   void initState() {
//     _nameController = TextEditingController();
//     _phoneController = TextEditingController();
//     _emailController = TextEditingController();
//     _ConfirmPasswordController = TextEditingController();
//     _addressController = TextEditingController();
//     _PasswordController = TextEditingController();
//     super.initState();
//   }
//
//   // Function to validate all fields
//   bool validateFields() {
//     setState(() {
//       _nameValidate = _nameController.text.isEmpty;
//       _passValidate = _PasswordController.text.isEmpty;
//       _confirmValidate = _ConfirmPasswordController.text.isEmpty;
//       _emailValidate = _emailController.text.isEmpty;
//       _phoneValidate = _phoneController.text.isEmpty;
//       _addressValidate = _addressController.text.isEmpty;
//
//       if (_PasswordController.text != _ConfirmPasswordController.text) {
//         _errorpasscontroller = true;
//         _confirmValidate = false;
//       } else {
//         _errorpasscontroller = false;
//       }
//
//       if (!RegExp(
//           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
//           .hasMatch(_emailController.text)) {
//         _erroremail = true;
//       } else {
//         _erroremail = false;
//       }
//
//       if (!RegExp(r'^[0-9]{10}$').hasMatch(_phoneController.text)) {
//         _errorphone = true;
//       } else {
//         _errorphone = false;
//       }
//     });
//
//     return !_nameValidate &&
//         !_passValidate &&
//         !_confirmValidate &&
//         !_emailValidate &&
//         !_phoneValidate &&
//         !_addressValidate &&
//         !_errorpasscontroller &&
//         !_erroremail &&
//         !_errorphone;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
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
//                       SizedBox(height: 30,),
//                       Text(
//                         'Sign Up',
//                         style: GoogleFonts.robotoCondensed(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(height: 60,),
//                       Center(
//                         child: Container(
//                           padding: EdgeInsets.only(
//                             left: 30,
//                             right: 30,
//                             top: 35,
//                             bottom: 35,
//                           ),
//                           width: 340,
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
//                                 controller: _nameController,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(color: Colors.black, width: 1),
//                                   ),
//                                   hintText: 'Name',
//                                   errorText: _nameValidate ? 'Please Enter Name' : null,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               TextFormField(
//                                 controller: _emailController,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(color: Colors.black, width: 1),
//                                   ),
//                                   hintText: 'Email Address',
//                                   errorText: _emailValidate
//                                       ? 'Please Enter Email'
//                                       : _erroremail
//                                       ? 'Please Enter Valid Email'
//                                       : null,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               TextFormField(
//                                 controller: _phoneController,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(color: Colors.black, width: 1),
//                                   ),
//                                   hintText: 'Phone Number',
//                                   errorText: _phoneValidate
//                                       ? 'Please Enter Phone Number'
//                                       : _errorphone
//                                       ? 'Enter Valid Phone Number'
//                                       : null,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               TextField(
//                                 controller: _addressController,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(color: Colors.black, width: 1),
//                                   ),
//                                   hintText: 'Address',
//                                   errorText:
//                                   _addressValidate ? 'Please Enter Address' : null,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               TextField(
//                                 controller: _PasswordController,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(color: Colors.black, width: 1),
//                                   ),
//                                   hintText: 'Enter Password',
//                                   errorText: _passValidate ? 'Please Enter Password' : null,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               TextField(
//                                 controller: _ConfirmPasswordController,
//                                 decoration: InputDecoration(
//                                   contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(color: Colors.black, width: 1),
//                                   ),
//                                   hintText: 'Confirm Password',
//                                   errorText: _confirmValidate ? 'Please Enter Password' : _errorpasscontroller ? 'Password not matching'
//                                       : null,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               ElevatedButton(
//                                 child: Text('Sign Up'),
//                                 style: ButtonStyle(
//                                   backgroundColor:
//                                   MaterialStateProperty.all(Colors.blue[800]),
//                                   fixedSize:
//                                   MaterialStateProperty.all<Size>(Size(150, 20)),
//                                   shape: MaterialStateProperty.all<
//                                       RoundedRectangleBorder>(
//                                     RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(20.0),
//                                     ),
//                                   ),
//                                 ),
//                                 onPressed: () async {
//                                   if (validateFields()) {
//                                     signupRequest signup_request = signupRequest(
//                                       Username: _nameController.text,
//                                       Password: _PasswordController.text,
//                                       Email: _emailController.text,
//                                       Phone: _phoneController.text,
//                                       Address: _addressController.text,
//                                     );
//                                     SignupResponse? retrivedUser =
//                                     await _dioClient.SignUpUser(Signup_Request: signup_request);
//
//                                     if (retrivedUser != null) {
//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => Home(),
//                                         ),
//                                       );
//                                       if (retrivedUser.status == 1) {
//                                         _addressController.clear();
//                                         _phoneController.clear();
//                                         _emailController.clear();
//                                         _nameController.clear();
//                                         _PasswordController.clear();
//                                         _ConfirmPasswordController.clear();
//                                       }
//                                     }
//                                   }
//                                 },
//                               ),
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
import 'package:tendertouchdup/Pages/Home.dart';
import 'package:tendertouchdup/SignUp/Model/SignupResponse.dart';
import 'package:tendertouchdup/SignUp/Model/signupRequest.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> SignUpState();
}
class SignUpState extends State {
  final Color _color = Color(0xff11AE93);
  final Color _Colorwhite = Colors.white;
  late final TextEditingController _nameController;
  late final TextEditingController _PasswordController;
  late final TextEditingController _ConfirmPasswordController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late final TextEditingController _addressController;

  bool _nameValidate = false;
  bool _passValidate = false;
  bool _confirmValidate = false;
  bool _emailValidate = false;
  bool _phoneValidate = false;
  bool _addressValidate = false;
  bool _errorpasscontroller = false;
  bool _erroremail = false;
  bool _errorphone = false;

  final DioClient _dioClient = DioClient();

  @override
  void initState() {
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _emailController = TextEditingController();
    _ConfirmPasswordController = TextEditingController();
    _addressController = TextEditingController();
    _PasswordController = TextEditingController();
    super.initState();
  }

  // Function to validate all fields
  bool validateFields() {
    setState(() {
      _nameValidate = _nameController.text.isEmpty;
      _passValidate = _PasswordController.text.isEmpty;
      _confirmValidate = _ConfirmPasswordController.text.isEmpty;
      _emailValidate = _emailController.text.isEmpty;
      _phoneValidate = _phoneController.text.isEmpty;
      _addressValidate = _addressController.text.isEmpty;

      if (_PasswordController.text != _ConfirmPasswordController.text) {
        _errorpasscontroller = true;
        _confirmValidate = false;
      } else {
        _errorpasscontroller = false;
      }

      if (!RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(_emailController.text)) {
        _erroremail = true;
      } else {
        _erroremail = false;
      }

      if (!RegExp(r'^[0-9]{10}$').hasMatch(_phoneController.text)) {
        _errorphone = true;
      } else {
        _errorphone = false;
      }
    });

    return !_nameValidate &&
        !_passValidate &&
        !_confirmValidate &&
        !_emailValidate &&
        !_phoneValidate &&
        !_addressValidate &&
        !_errorpasscontroller &&
        !_erroremail &&
        !_errorphone;
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
                  top: MediaQuery.of(context).size.height/12,
                  left: MediaQuery.of(context).size.width/3,
                  child: Image.asset('assets/logo.png',
                    width: 130,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height/6,
                  left: MediaQuery.of(context).size.width/9,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _Colorwhite,
                    ),
                    padding: EdgeInsets.all(35),
                    height: MediaQuery.of(context).size.height/1.7,
                    width: MediaQuery.of(context).size.width/1.3,
                    child: ListView(
                      children: [
                        TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Colors.black, width: 1),
                            ),
                            hintText: 'Name',
                            errorText: _nameValidate ? 'Please Enter Name' : null,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Colors.black, width: 1),
                            ),
                            hintText: 'Email Address',
                            errorText: _emailValidate
                                ? 'Please Enter Email'
                                : _erroremail
                                ? 'Please Enter Valid Email'
                                : null,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _phoneController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Colors.black, width: 1),
                            ),
                            hintText: 'Phone Number',
                            errorText: _phoneValidate
                                ? 'Please Enter Phone Number'
                                : _errorphone
                                ? 'Enter Valid Phone Number'
                                : null,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: _addressController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Colors.black, width: 1),
                            ),
                            hintText: 'Address',
                            errorText:
                            _addressValidate ? 'Please Enter Address' : null,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _PasswordController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Colors.black, width: 1),
                            ),
                            hintText: 'Enter Password',
                            errorText: _passValidate ? 'Please Enter Password' : null,
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: _ConfirmPasswordController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(color: Colors.black, width: 1),
                            ),
                            hintText: 'Confirm Password',
                            errorText: _confirmValidate ? 'Please Enter Password' : _errorpasscontroller ? 'Password not matching'
                                : null,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          child: Text('Sign Up',style: TextStyle(color: _Colorwhite),),
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(_color),
                            fixedSize:
                            MaterialStateProperty.all<Size>(Size(150, 20)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          onPressed: () async {
                            if (validateFields()) {
                              signupRequest signup_request = signupRequest(
                                Username: _nameController.text,
                                Password: _PasswordController.text,
                                Email: _emailController.text,
                                Phone: _phoneController.text,
                                Address: _addressController.text,
                              );
                              SignupResponse ? retrivedUser = await _dioClient.SignUpUser(Signup_Request: signup_request);
                              if (retrivedUser != null) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ),
                                );
                                if (retrivedUser.status == 1) {
                                  _addressController.clear();
                                  _phoneController.clear();
                                  _emailController.clear();
                                  _nameController.clear();
                                  _PasswordController.clear();
                                  _ConfirmPasswordController.clear();
                                }
                              }
                            }
                          },
                        ),
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
