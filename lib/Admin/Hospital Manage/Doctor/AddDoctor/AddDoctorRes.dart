import 'dart:convert';

AddDoctorResponse addDoctorResponseFromJson(String str) => AddDoctorResponse.fromJson(json.decode(str));

String addDoctorResponseToJson(AddDoctorResponse data) => json.encode(data.toJson());

class AddDoctorResponse {
  int status;
  String msg;

  AddDoctorResponse({
    required this.status,
    required this.msg,
  });

  factory AddDoctorResponse.fromJson(Map<String, dynamic> json) => AddDoctorResponse(
    status: json["Status"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "msg": msg,
  };
}
