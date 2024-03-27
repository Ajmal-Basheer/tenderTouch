// To parse this JSON data, do
//
//     final therapyResponse = therapyResponseFromJson(jsonString);

import 'dart:convert';

TherapyResponse therapyResponseFromJson(String str) => TherapyResponse.fromJson(json.decode(str));

String therapyResponseToJson(TherapyResponse data) => json.encode(data.toJson());

class TherapyResponse {
  int status;
  List<TherapyDatum> data;
  String msg;

  TherapyResponse({
    required this.status,
    required this.data,
    required this.msg,
  });

  factory TherapyResponse.fromJson(Map<String, dynamic> json) => TherapyResponse(
    status: json["Status"],
    data: List<TherapyDatum>.from(json["Data"].map((x) => TherapyDatum.fromJson(x))),
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Data": List<dynamic>.from(data.map((x) => x.toJson())),
    "msg": msg,
  };
}

class TherapyDatum {
  int therapyId;
  String videoLink;
  String videoName;
  String videoDescription;

  TherapyDatum({
    required this.therapyId,
    required this.videoLink,
    required this.videoName,
    required this.videoDescription,
  });

  factory TherapyDatum.fromJson(Map<String, dynamic> json) => TherapyDatum(
    therapyId: json["Therapy_Id"],
    videoLink: json["video_link"],
    videoName: json["Video_name"],
    videoDescription: json["Video_Description"],
  );

  Map<String, dynamic> toJson() => {
    "Therapy_Id": therapyId,
    "video_link": videoLink,
    "Video_name": videoName,
    "Video_Description": videoDescription,
  };
}
