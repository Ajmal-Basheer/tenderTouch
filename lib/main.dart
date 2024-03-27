import 'package:flutter/material.dart';
import 'package:tendertouchdup/Admin/AdminHome.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/HospitalCare.dart';
import 'package:tendertouchdup/Admin/Therapy/AddTherapy.dart';
import 'package:tendertouchdup/Pages/GetStart.dart';
import 'package:tendertouchdup/Pages/Home.dart';
import 'package:tendertouchdup/Pages/Hospital%20Care/UserHospitalcare.dart';
import 'package:tendertouchdup/Pages/Therapy/therapyHome.dart';
import 'package:tendertouchdup/Profile/profile.dart';
import 'package:tendertouchdup/SignUp/SignUp.dart';
import 'package:tendertouchdup/Utilities/Bottombar.dart';
import 'package:tendertouchdup/workspace.dart';
import 'Login/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tender Touch',
      home:getstart(),
      debugShowCheckedModeBanner: false,
    );
  }
}
