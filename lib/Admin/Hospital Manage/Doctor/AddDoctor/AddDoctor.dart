import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/DepartmentList/DepartmentResponse.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/AddDoctor/AddDoctorReq.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/AddDoctor/AddDoctorRes.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class AddDoctor extends StatefulWidget {  @override
  State<StatefulWidget> createState()=>AddDoctorState();
}
class AddDoctorState extends State {
  final Color _color = Color(0xff11AE93);
  final TextEditingController DoctorName_ = TextEditingController();
  final TextEditingController _departmentid = TextEditingController();
  bool _addDoctorValidate = false;
  final DioClient _dioClient = DioClient();
  var departmentidlist_ =['0'];
  var departmentlist_ = ['Select Department'];
  String dropdownvalue = 'Select Department';
  String ? depid = '0', depname;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            child: FutureBuilder<List<DepartmentListDatum>>(
                future: _dioClient.ViewDepartmentList(),
                builder: (context,snapshot){
                  if(!snapshot.hasData){
                   return DropdownButton<String>(
                     isExpanded: true,
                       elevation: 16,
                       onChanged: (String? newValue){},
                     items: <String>['Select Department']
                         .map<DropdownMenuItem<String>>((String value) {
                           return DropdownMenuItem<String>(
                               child: Text('',style: TextStyle(fontSize: 10),textAlign: TextAlign.start,));
                     }).toList()
                   );
                  }else {
                    for (int i=0;i<snapshot.data!.length;i++){
                      String ? categoryname = snapshot.data![i].departmentname;
                      String ? categoryid = snapshot.data![i].departmentId.toString();
                      departmentlist_.add(categoryname!);
                      departmentidlist_.add(categoryid);
                    }
                    List<String>? subject = departmentlist_;
                    var seen = Set<String>();
                    List<String> uniquelist = subject!.where((item) => seen.add(item)).toList();
                    return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DropdownButton(
                            items: uniquelist.map((item){
                              if(item == null){
                                return DropdownMenuItem<String>(
                                  value: '',
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width-120,
                                      child: Text('',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ));
                              }
                              return DropdownMenuItem<String>(
                                value: item,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width-120,
                                    child: Text(
                                      item,style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                              onTap: (){
                                  setState(() {
                                    int id = departmentlist_.indexOf(item);
                                    depid = snapshot.data![id-1].departmentId.toString();
                                    depname = snapshot.data![id-1].departmentname.toString();
                                    Fluttertoast.showToast(msg: depname.toString()+ depid.toString(),
                                    toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER
                                    );
                                    depname = item.toString();
                                  });
                              },
                              );
                            }).toList(),
                            onChanged: (newValue){
                              setState(() async{
                                dropdownvalue  = newValue!;
                              });
                  },
                        value: dropdownvalue!.isNotEmpty ? dropdownvalue : null,
                        )
                      ],
                    );
                  }
                }),
          ),

          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: DoctorName_,
              decoration: InputDecoration(
                hintText: 'Doctor Name',
                contentPadding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                errorText: _addDoctorValidate ? 'Please Enter Doctor Name' : null,
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
                DoctorName_.text.isEmpty ? _addDoctorValidate = true : _addDoctorValidate = false;
              });
              if(DoctorName_.text != ''){
                
               AddDoctorReq ? addDoctorReq_ = AddDoctorReq(
               DepartmentId: depid.toString(), DoctorName: DoctorName_.text);
               
               AddDoctorResponse ? retrievedUser = await _dioClient.AddDoctor_(addDoctorReq: addDoctorReq_);
               if(retrievedUser!=null){
               if(retrievedUser.status == 1){
                 _departmentid.clear();
                 DoctorName_.clear();
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
