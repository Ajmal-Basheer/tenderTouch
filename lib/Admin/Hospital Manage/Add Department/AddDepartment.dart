import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Add%20Department/AddDepRes.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Add%20Department/AddDepartmentReq.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class AddDepartment extends StatefulWidget {  @override
  State<StatefulWidget> createState() => AddDepartmentState();
}
class AddDepartmentState extends State {
  final Color _color = Color(0xff11AE93);
  final TextEditingController _addDep = TextEditingController();
  bool _addDepValidate = false;
  final DioClient _dioClient = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
           padding: EdgeInsets.all(20),
           child: TextField(
             controller: _addDep,
              decoration: InputDecoration(
                hintText: 'Department Name',
                contentPadding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                errorText: _addDepValidate ? 'Please Enter Department Name' : null,
              ),
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
              MaterialStateProperty.all(_color),
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
                _addDep.text.isEmpty ? _addDepValidate = true : _addDepValidate = false;
              });
              if(_addDep.text != ''){
               AddDepartmentReq addDepReq_ =
                   AddDepartmentReq(DepartmentName: _addDep.text);
               AddDepartmentRes? retrievedUser = await _dioClient.addDepartment(
                   addDepartmentReq: addDepReq_);
               if(retrievedUser  != null){
                 if (retrievedUser.status == 1){
                   _addDep.clear();
                   QuickAlert.show(context: context, type: QuickAlertType.success);
                 }else{
                   QuickAlert.show(context: context, type: QuickAlertType.error);
                 }
               }
              }
            },
          ),
        ],
      ),
    );
  }
}
