// To parse this JSON data, do
//
//     final deleteDepResponse = deleteDepResponseFromJson(jsonString);

import 'dart:convert';

DeleteDepResponse deleteDepResponseFromJson(String str) => DeleteDepResponse.fromJson(json.decode(str));

String deleteDepResponseToJson(DeleteDepResponse data) => json.encode(data.toJson());

class DeleteDepResponse {
  int status;
  String msg;

  DeleteDepResponse({
    required this.status,
    required this.msg,
  });

  factory DeleteDepResponse.fromJson(Map<String, dynamic> json) => DeleteDepResponse(
    status: json["Status"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "msg": msg,
  };
}
