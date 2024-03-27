

import 'dart:convert';

AddDepartmentRes addDepartmentResFromJson(String str) => AddDepartmentRes.fromJson(json.decode(str));

String addDepartmentResToJson(AddDepartmentRes data) => json.encode(data.toJson());

class AddDepartmentRes {
  int status;
  String msg;

  AddDepartmentRes({
    required this.status,
    required this.msg,
  });

  factory AddDepartmentRes.fromJson(Map<String, dynamic> json) => AddDepartmentRes(
    status: json["Status"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "msg": msg,
  };
}
