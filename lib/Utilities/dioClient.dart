import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Add%20Department/AddDepRes.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Add%20Department/AddDepartmentReq.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/BookingList/bookingReq.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/BookingList/bookingResponse.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/DepartmentList/DepartmentDeleteRequest.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/DepartmentList/DepartmentDeleteResponse.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/DepartmentList/DepartmentResponse.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/AddDoctor/AddDoctorReq.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/AddDoctor/AddDoctorRes.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/DoctorList/DoctorDeleteRequest.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/DoctorList/DoctorDeleteResponse.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/Doctor/DoctorList/DoctorListResponse.dart';
import 'package:tendertouchdup/Admin/Therapy/Model/AddTherapyRequest.dart';
import 'package:tendertouchdup/Admin/Therapy/Model/AddtherapyResponse.dart';
import 'package:tendertouchdup/Login/Model/LoginResponse.dart';
import 'package:tendertouchdup/Pages/Therapy/therapyResponse.dart';
import 'package:tendertouchdup/Profile/Model/profileResponse.dart';
import 'package:tendertouchdup/SignUp/Model/SignupResponse.dart';
import 'package:tendertouchdup/SignUp/Model/signupRequest.dart';
import '../Login/Model/LoginRequest.dart';
import 'reqNresponse.dart';

class DioClient {

  SharedPreferences ? logindata;
  late int userid;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://android.softloom.com',
      connectTimeout: Duration(seconds: 100),
      receiveTimeout: Duration(seconds: 100),
    ),
  )..interceptors.add(Req_Res());

//User Login
  Future<LoginResponse?> loginUser({required LoginRequest login_request}) async {
    LoginResponse? retrievedUser;

    try {
      var formData = FormData.fromMap({
        'User_email': login_request.Username,
        'User_Password': login_request.Password,
      });
      var response = await _dio.post(
        '/Palicare/User_Login',
        data: formData,
      );

      print('User created: ${response.data}');

      retrievedUser = LoginResponse.fromJson(response.data);

    } catch (e) {
      print('Error creating user: $e');
    }

    return retrievedUser;
  }

 //Sign Up
  Future <SignupResponse?> SignUpUser ({required signupRequest Signup_Request }) async{
    SignupResponse ? retrievedUser;
    try{
      var formData = FormData.fromMap({
        'Username' : Signup_Request.Username,
        'User_email' : Signup_Request.Email,
        'User_Password' : Signup_Request.Password,
        'User_phone' : Signup_Request.Phone,
        'Address' : Signup_Request.Address,
      });
      var response = await _dio.post(
          '/Palicare/User_Register',
        data: formData
      );
       print('user created: ${response.data}');
       retrievedUser = SignupResponse.fromJson(response.data);
    }catch (e) {
    print('error creating user: $e');
    }
    return retrievedUser;
  }

  //View Profile
  Future<ProfileResponseModel?>ViewProfileModel()async{
    ProfileResponseModel ? retrievedUser;
    logindata = await SharedPreferences.getInstance();
    userid = logindata!.getInt('userid')!;

    try{
      var formData = FormData.fromMap({
        'Use_id' : userid.toString(),
      });
      var response = await _dio.post(
          '/Palicare/Pali_GetUserDetails',
            data: formData
      );
      print('User created : ${response.data}');
      retrievedUser = ProfileResponseModel.fromJson(response.data);
    }catch(e){
      print('error creating user : $e');
    }
    return retrievedUser;
  }

  //Add Therapy
  Future<AddtherapyResponse?> addTherapy(
      {required AddtherapyRequest addtherapyRequest}) async {
    AddtherapyResponse? retrievedUser;

    try {
      var formData = FormData.fromMap({
        'Video_link': addtherapyRequest.videolink,
        'video_name': addtherapyRequest.videoname,
        'Video_Description': addtherapyRequest.videodescription,
      });
      var response = await _dio.post(
        '/Palicare/pali_therapyinsert',
        data: formData,
      );
      print('user created : ${response.data}');
      retrievedUser = AddtherapyResponse.fromJson(response.data);
    } catch (e) {
      print('error creating user : $e');
    }
    return retrievedUser;
  }

  //Therapy List
  Future<List<TherapyDatum>> therapyList() async {
    TherapyResponse? retrievedUser;
    try {
      var response = await _dio.post(
        '/Palicare/ViewTherapy',
      );
      print('user created : ${response.data}');
      retrievedUser = TherapyResponse.fromJson(response.data);
    } catch (e) {
      print('error creating user : $e');
    }
    return retrievedUser!.data;
  }

  //Add Department
  Future<AddDepartmentRes?>addDepartment({required AddDepartmentReq addDepartmentReq}) async{
  AddDepartmentRes? retrievedUser;
  try{
    var formData = FormData.fromMap({
  'Department_Name': addDepartmentReq.DepartmentName,
  });
    var response = await _dio.post(
    '/Palicare/Pali_Department',
     data: formData
    );
    print('user created : ${response.data}');
    retrievedUser = AddDepartmentRes.fromJson(response.data);
  }catch(e){
    print('error creating user : $e');
  }
  return retrievedUser;
}

//View Department
Future<List<DepartmentListDatum>>ViewDepartmentList()async{
  DepartmentListRes ? retrievedUser;
  try{
    var response = await _dio.post(
     '/Palicare/ViewDepartment',
    );
     print('user created : ${response.data}');
    retrievedUser = DepartmentListRes.fromJson(response.data);
  }catch(e){
    print('error creating user : $e');
  }
  return retrievedUser!.data;
}

//Delete Department
Future<DeleteDepResponse?>DeleteDep({required DeleteDepReq deleteDepReq})async{
  DeleteDepResponse? retrievedUser;
  try{
    var formData = FormData.fromMap({
    'departmentId' : deleteDepReq.DepartmentId
    });
    var response = await _dio.post(
      '/Palicare/deleteDepartment',
     data: formData,
    );
    print('user created : ${response.data}');
    retrievedUser = DeleteDepResponse.fromJson(response.data);
  }catch(e){
    print('error creating user : $e');
  }
  return retrievedUser;
}

//Add Doctor
Future<AddDoctorResponse?>AddDoctor_({required AddDoctorReq addDoctorReq})async{
  AddDoctorResponse ? retrievedUser;
  try{
    var formData = FormData.fromMap({
      'departmentId' : addDoctorReq.DepartmentId,
      'docter_name' : addDoctorReq.DoctorName
    });
    var response = await _dio.post(
        '/Palicare/insertdocter',
      data: formData,
    );
    print('user created : ${response.data}');
    retrievedUser = AddDoctorResponse.fromJson(response.data);
  }catch(e){
    print('error creating user : $e');
  }
  return retrievedUser;
}

//Doctor List
Future<List<DoctorListDatum>>DoctorList()async{
  DoctorListResponse ? retrievedUser;
  try{
    var response = await _dio.post(
        '/Palicare/ViewDocter'
    );
    print('User Created : ${response.data}');
    retrievedUser = DoctorListResponse.fromJson(response.data);
  }catch(e){
    print('error creating user : $e');
  }
  return retrievedUser!.data;
}
//Doctor Delete
Future<DeleteDoctorResponse ?>deleteDoctor({required DeleteDoctorReq deleteDoctorReq})async{
  DeleteDoctorResponse ? retrievedUser;
  try{
    var formData = FormData.fromMap({
      'docter_name' : deleteDoctorReq.DoctorName,
    });
    var response = await _dio.post(
        'path',
        data: formData);
    print('user created : ${response.data}');
    retrievedUser = DeleteDoctorResponse.fromJson(response.data);
  }catch(e) {
    print('error creating user : $e');
  }
  return retrievedUser;
}

//Booking List
  Future<List<BookingsListByDateDatum>> bookingListByDate({required BookingBydateReq bookingbydate}) async {
    BookingsListByDate? retrievedUser;

    try {
      var formData = FormData.fromMap({
        'Booking_date': bookingbydate.Date,
      });

      var response = await _dio.post(
        '/Palicare/ViewBookingbydate',
        data: formData,
      );

      retrievedUser = BookingsListByDate.fromJson(response.data);
    } catch (e) {
      print('Error creating user: $e');
    }
    return retrievedUser!.data;
  }

} //dio