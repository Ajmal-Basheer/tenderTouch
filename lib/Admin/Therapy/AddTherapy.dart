import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';
import 'package:tendertouchdup/Admin/Therapy/Model/AddTherapyRequest.dart';
import 'package:tendertouchdup/Admin/Therapy/Model/AddtherapyResponse.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class Addtherapy extends StatefulWidget {  @override
  State<StatefulWidget> createState()=> AddtherapyState();
}
class AddtherapyState extends State {
  final TextEditingController _videoLinkcontroller = TextEditingController();
  final TextEditingController _videoNamecontroller = TextEditingController();
  final TextEditingController _videoDescriptioncontroller = TextEditingController();

  bool _namevalidate = false;
  bool _linkvalidate = false;
  bool _descriptionvalidate = false;
  
  final DioClient _dioClient = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
    body : SingleChildScrollView(
      child: SafeArea(
        child: Column(
            children: [
              SizedBox(height: 20,),
            Container(
            height: 250,
            child: Image.asset('assets/therapyvideo.png', fit: BoxFit.cover),
          ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Therapy Video',
                        style: GoogleFonts.abel(
                          textStyle: TextStyle(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        controller: _videoNamecontroller,
                        decoration:  InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 30.0),
                            hintText: 'Video Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white, width: 1),
                            ),
                          fillColor: Color(0xe2ffffff),
                          filled: true,
                          errorText: _namevalidate ? 'Enter Video Name': null,
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        controller: _videoLinkcontroller,
                        decoration:  InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 30.0),
                            hintText: 'Video Link',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black, width: 1),
                            ),
                          fillColor: Color(0xe2ffffff),
                          filled: true,
                          errorText: _linkvalidate ? 'Enter Video Link': null,
                        ),
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        controller: _videoDescriptioncontroller,
                        decoration:  InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 30.0),
                            hintText: 'Video Description',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white, width: 1),
                            ),
                          fillColor: Color(0xe2ffffff),
                          filled: true,
                          errorText: _descriptionvalidate ? 'Enter Video Description': null,
                        ),
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(
                        child: Text('SUBMIT',style: GoogleFonts.roboto(
                            fontSize: 17,
                            color: Colors.white,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.blue[800]),
                          fixedSize:
                          MaterialStateProperty.all<Size>(Size(165, 40)),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ),
                        onPressed: () async {
                          setState(() {
                            _videoNamecontroller.text.isEmpty ? _namevalidate = true : _namevalidate = false;
                            _videoLinkcontroller.text.isEmpty ? _linkvalidate = true : _linkvalidate = false;
                            _videoDescriptioncontroller.text.isEmpty ? _descriptionvalidate = true : _descriptionvalidate = false;
                          });
                          if( _videoNamecontroller.text !='') {
                            AddtherapyRequest addtherapy_Request = AddtherapyRequest(
                                videodescription: _videoDescriptioncontroller
                                    .text,
                                videolink: _videoLinkcontroller.text,
                                videoname: _videoNamecontroller.text);
                            AddtherapyResponse ? retrievedUser = await _dioClient
                                .addTherapy(
                                addtherapyRequest: addtherapy_Request);
                            if (retrievedUser != null) {
                              if (retrievedUser.status == 1) {
                                _videoNamecontroller.clear();
                                _videoLinkcontroller.clear();
                                _videoDescriptioncontroller.clear();
                                QuickAlert.show(context: context,
                                    type: QuickAlertType.success);
                              } else {
                                QuickAlert.show(context: context,
                                    type: QuickAlertType.error);
                              }
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
          ]
          ),
      ),
    )
    );
  }
}
