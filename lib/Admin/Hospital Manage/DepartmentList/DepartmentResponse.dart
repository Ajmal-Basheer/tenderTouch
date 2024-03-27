// To parse this JSON data, do
//
//     final departmentListRes = departmentListResFromJson(jsonString);

import 'dart:convert';

DepartmentListRes departmentListResFromJson(String str) => DepartmentListRes.fromJson(json.decode(str));

String departmentListResToJson(DepartmentListRes data) => json.encode(data.toJson());

class DepartmentListRes {
  int status;
  List<DepartmentListDatum> data;
  String msg;

  DepartmentListRes({
    required this.status,
    required this.data,
    required this.msg,
  });

  factory DepartmentListRes.fromJson(Map<String, dynamic> json) => DepartmentListRes(
    status: json["Status"],
    data: List<DepartmentListDatum>.from(json["Data"].map((x) => DepartmentListDatum.fromJson(x))),
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Data": List<dynamic>.from(data.map((x) => x.toJson())),
    "msg": msg,
  };
}

class DepartmentListDatum {
  int departmentId;
  String departmentname;

  DepartmentListDatum({
    required this.departmentId,
    required this.departmentname,
  });

  factory DepartmentListDatum.fromJson(Map<String, dynamic> json) => DepartmentListDatum(
    departmentId: json["department_Id"],
    departmentname: json["departmentname"],
  );

  Map<String, dynamic> toJson() => {
    "department_Id": departmentId,
    "departmentname": departmentname,
  };
}
