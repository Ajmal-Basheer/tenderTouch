import 'package:flutter/material.dart';
import 'package:tendertouchdup/Admin/AdminHome.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Add%20Department/AddDepartment.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/BookingList/bookingList.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/DepartmentList/DepartmentList.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/AddDoctor/AddDoctor.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/DoctorList/DoctorList.dart';

class doctorHome extends StatefulWidget {  @override
  State<StatefulWidget> createState()=>doctorHomeState();
}
class doctorHomeState extends State {
  final Color _color = Color(0xff11AE93);
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 5,
     child: Scaffold(
     appBar: AppBar(
       title: Text('Hospital Management',style: TextStyle(color: Colors.white,fontSize: 20),),
       leading: IconButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminHome()));
       },
           icon: Icon(Icons.arrow_back,color: Colors.white,)),
       backgroundColor: _color,
       bottom: TabBar(
           isScrollable: true,
           labelColor: Colors.white,
           unselectedLabelColor: Colors.white54,
           indicatorColor: Colors.white,
           tabAlignment: TabAlignment.start,
           tabs: [
             Tab(text: 'Add Department'),
             Tab(text: 'Department List'),
             Tab(text: 'Add Doctor'),
             Tab(text: 'Doctor List'),
             Tab(text: 'Booking List'),
           ]),
     ),
       body: TabBarView(
           children:[
             AddDepartment(),
             DepartmentList(),
             AddDoctor(),
             DoctorList(),
             bookinglist()
           ]
       ),
     ),
   );
  }
}
