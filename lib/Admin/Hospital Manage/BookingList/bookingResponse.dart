import 'dart:convert';

BookingsListByDate bookingsListFromJson(String str) => BookingsListByDate.fromJson(json.decode(str));

String bookingsListToJson(BookingsListByDate data) => json.encode(data.toJson());

class BookingsListByDate {
  int status;
  List<BookingsListByDateDatum> data;
  String msg;

  BookingsListByDate({
    required this.status,
    required this.data,
    required this.msg,
  });

  factory BookingsListByDate.fromJson(Map<String, dynamic> json) => BookingsListByDate(
    status: json["Status"],
    data: List<BookingsListByDateDatum>.from(json["Data"].map((x) => BookingsListByDateDatum.fromJson(x))),
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Data": List<dynamic>.from(data.map((x) => x.toJson())),
    "msg": msg,
  };
}

class BookingsListByDateDatum {
  String docterName;
  String username;
  int bookingId;
  String bookingDate;
  DateTime column1;
  int userId;

  BookingsListByDateDatum({
    required this.docterName,
    required this.username,
    required this.bookingId,
    required this.bookingDate,
    required this.column1,
    required this.userId,
  });

  factory BookingsListByDateDatum.fromJson(Map<String, dynamic> json) => BookingsListByDateDatum(
    docterName: json["Docter_Name"],
    username: json["Username"],
    bookingId: json["Booking_Id"],
    bookingDate: json["Booking_date"],
    column1: DateTime.parse(json["Column1"]),
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "Docter_Name": docterName,
    "Username": username,
    "Booking_Id": bookingId,
    "Booking_date": bookingDate,
    "Column1": "${column1.year.toString().padLeft(4, '0')}-${column1.month.toString().padLeft(2, '0')}-${column1.day.toString().padLeft(2, '0')}",
    "user_id": userId,
  };
}
