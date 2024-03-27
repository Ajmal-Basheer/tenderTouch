
import 'dart:convert';

ProfileResponseModel profileResponseModelFromJson(String str) => ProfileResponseModel.fromJson(json.decode(str));

String profileResponseModelToJson(ProfileResponseModel data) => json.encode(data.toJson());

class ProfileResponseModel {
  DateTime registrationDate;
  int useId;
  String username;
  String userPhone;
  String userEmail;
  String userPassword;
  String address;
  bool delStatus;
  String registrationDate1;

  ProfileResponseModel({
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

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) => ProfileResponseModel(
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
