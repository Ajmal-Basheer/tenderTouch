// To parse this JSON data, do
//
//     final doctorListResponse = doctorListResponseFromJson(jsonString);

import 'dart:convert';

DoctorListResponse doctorListResponseFromJson(String str) => DoctorListResponse.fromJson(json.decode(str));

String doctorListResponseToJson(DoctorListResponse data) => json.encode(data.toJson());

class DoctorListResponse {
  int status;
  List<DoctorListDatum> data;
  String msg;

  DoctorListResponse({
    required this.status,
    required this.data,
    required this.msg,
  });

  factory DoctorListResponse.fromJson(Map<String, dynamic> json) => DoctorListResponse(
    status: json["Status"],
    data: List<DoctorListDatum>.from(json["Data"].map((x) => DoctorListDatum.fromJson(x))),
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Data": List<dynamic>.from(data.map((x) => x.toJson())),
    "msg": msg,
  };
}

class DoctorListDatum {
  int departmentId;
  int docterId;
  String docterName;
  String departmentname;

  DoctorListDatum({
    required this.departmentId,
    required this.docterId,
    required this.docterName,
    required this.departmentname,
  });

  factory DoctorListDatum.fromJson(Map<String, dynamic> json) => DoctorListDatum(
    departmentId: json["Department_Id"],
    docterId: json["Docter_Id"],
    docterName: json["Docter_Name"],
    departmentname: json["departmentname"],
  );

  Map<String, dynamic> toJson() => {
    "Department_Id": departmentId,
    "Docter_Id": docterId,
    "Docter_Name": docterName,
    "departmentname": departmentname,
  };
}
