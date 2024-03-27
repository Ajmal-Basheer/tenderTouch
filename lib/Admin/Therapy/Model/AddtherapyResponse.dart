import 'dart:convert';

AddtherapyResponse addtherapyResponseFromJson(String str) => AddtherapyResponse.fromJson(json.decode(str));

String addtherapyResponseToJson(AddtherapyResponse data) => json.encode(data.toJson());

class AddtherapyResponse {
  int status;
  String msg;

  AddtherapyResponse({
    required this.status,
    required this.msg,
  });

  factory AddtherapyResponse.fromJson(Map<String, dynamic> json) => AddtherapyResponse(
    status: json["Status"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "msg": msg,
  };
}
