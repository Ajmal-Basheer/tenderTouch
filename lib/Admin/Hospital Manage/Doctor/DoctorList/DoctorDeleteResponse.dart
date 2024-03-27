// To parse this JSON data, do
//
//     final deleteDepResponse = deleteDepResponseFromJson(jsonString);

import 'dart:convert';

DeleteDoctorResponse deleteDoctorResponseFromJson(String str) => DeleteDoctorResponse.fromJson(json.decode(str));

String deleteDoctorResponseToJson(DeleteDoctorResponse data) => json.encode(data.toJson());

class DeleteDoctorResponse {
  int status;
  String msg;

  DeleteDoctorResponse({
    required this.status,
    required this.msg,
  });

  factory DeleteDoctorResponse.fromJson(Map<String, dynamic> json) => DeleteDoctorResponse(
    status: json["Status"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "msg": msg,
  };
}
