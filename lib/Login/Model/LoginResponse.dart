import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  int status;
  DateTime registrationDate;
  int useId;
  String username;
  String userPhone;
  String userEmail;
  String userPassword;
  String address;
  bool delStatus;
  String registrationDate1;

  LoginResponse({
    required this.status,
    required this.registrationDate,
    required this.useId,
    required this.username,
    required this.userPhone,
    required this.userEmail,
    required this.userPassword,
    required this.address,
    required this.delStatus,
    required this.registrationDate1,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    status: json["Status"],
    registrationDate: DateTime.parse(json["Registration_date"]),
    useId: json["Use_id"],
    username: json["Username"],
    userPhone: json["User_phone"],
    userEmail: json["User_email"],
    userPassword: json["User_Password"],
    address: json["Address"],
    delStatus: json["Del_status"],
    registrationDate1: json["Registration_date1"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Registration_date": "${registrationDate.year.toString().padLeft(4, '0')}-${registrationDate.month.toString().padLeft(2, '0')}-${registrationDate.day.toString().padLeft(2, '0')}",
    "Use_id": useId,
    "Username": username,
    "User_phone": userPhone,
    "User_email": userEmail,
    "User_Password": userPassword,
    "Address": address,
    "Del_status": delStatus,
    "Registration_date1": registrationDate1,
  };
}
