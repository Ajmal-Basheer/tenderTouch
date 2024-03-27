import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/DepartmentList/DepartmentDeleteRequest.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/DepartmentList/DepartmentDeleteResponse.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/DoctorList/DoctorDeleteRequest.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/DoctorList/DoctorDeleteResponse.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/DoctorList/DoctorListResponse.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class DoctorList extends StatefulWidget {  @override
State<StatefulWidget> createState() => DoctorListState();
}
class DoctorListState extends State {
  final DioClient _dioClient = DioClient();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<DoctorListDatum>>(
          future: _dioClient.DoctorList(),
          builder: (context,snapshot){
            if(!snapshot.hasData){
              return Center(
                  child: CircularProgressIndicator());
            }else{
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,),
                      Card(
                        child: ListTile(
                          leading : Text('Doctor Name',style: TextStyle(fontSize: 15),),
                          trailing: Text('Department Name',style: TextStyle(fontSize: 12)),
                        ),
                      ),
                      Container(
                          height: 600,
                          child : ListView.builder(
                              physics: AlwaysScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context,index){
                                if(!snapshot.data!.isNotEmpty){
                                  return Container();
                                }else {
                                  return Card(
                                    color: Colors.grey[300],
                                    child: ListTile(
                                      trailing: Text(snapshot.data![index].departmentname,style: GoogleFonts.abel(fontSize: 15),),
                                      leading: Text(snapshot.data![index].docterName,style:
                                      TextStyle(fontSize: 15),textAlign: TextAlign.center,),

                                      // trailing: GestureDetector(
                                      //   child: Image.asset('assets/delete.png',width: 35,),
                                      //   onTap: ()async{
                                      //     return showDialog(
                                      //         context: context,
                                      //         barrierDismissible: true,
                                      //         builder: (BuildContext context){
                                      //           return AlertDialog(
                                      //             title: Text("Delete"),
                                      //             content: SingleChildScrollView(
                                      //               child: ListBody(
                                      //                 children: [
                                      //                   Text('Would you like to Delete this Department?')
                                      //                 ],
                                      //               ),
                                      //             ),
                                      //             actions: <Widget>[
                                      //               TextButton(
                                      //                   onPressed: (){
                                      //                     Navigator.pop(context);
                                      //                   }, child: Text('Cancel')),
                                      //               TextButton(onPressed: ()async{
                                      //
                                      //                 DeleteDoctorReq deleteDoctorReq = DeleteDoctorReq(DoctorName: snapshot.data![index].docterName);
                                      //                 DeleteDoctorResponse ? retrievedUser=
                                      //                 await _dioClient.deleteDoctor(deleteDoctorReq: deleteDoctorReq);
                                      //
                                      //                 if(retrievedUser!=null){
                                      //                   if(retrievedUser.status ==1){
                                      //                     Fluttertoast.showToast(
                                      //                       msg: retrievedUser!.msg,
                                      //                       toastLength: Toast.LENGTH_LONG,
                                      //                       backgroundColor: Colors.white,
                                      //                       textColor: Colors.black54,
                                      //                       fontSize: 12.0,
                                      //                       timeInSecForIosWeb: 1,
                                      //                     );
                                      //                   }else {
                                      //                     Fluttertoast.showToast(
                                      //                       msg: retrievedUser!.msg,
                                      //                       toastLength: Toast.LENGTH_LONG,
                                      //                       backgroundColor: Colors.white,
                                      //                       textColor: Colors.black54,
                                      //                       fontSize: 12.0,
                                      //                       timeInSecForIosWeb: 1,
                                      //                     );
                                      //                   }
                                      //                   Navigator.pop(context);
                                      //                 }
                                      //               }, child: Text('Delete',style: TextStyle(color: Colors.red),))
                                      //             ],
                                      //           );
                                      //         }
                                      //     );
                                      //   },
                                      // ),
                                    ),

                                  );
                                }
                              })
                      )
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
