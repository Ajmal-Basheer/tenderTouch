import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/BookingList/bookingReq.dart';
import 'package:tendertouchdup/Admin/Hospital%20Manage/BookingList/bookingResponse.dart';
import 'package:tendertouchdup/Utilities/dioClient.dart';

class bookinglist extends StatefulWidget {  @override
  State<StatefulWidget> createState()=> bookinglistState();
}
class bookinglistState extends State {
  final Date = TextEditingController();
  late final TextEditingController _date;
  bool _emailvalidate = false;
  String ? date = '00/00/0000';
  final DioClient _dioClient = DioClient();

  @override
  void initState(){
    _date = TextEditingController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: TextField(
                controller: _date,
                decoration: InputDecoration(
                  hintText: 'Date',
                  labelStyle: new TextStyle(
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(color: Colors.blue),
                  errorText: _emailvalidate ? 'please select your date' : null,
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                readOnly: true,
                onTap: ()async{
                  DateTime? pickeddate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2025),
                  builder: (context,child){
                        return Theme(
                            data:Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary: Color(0xff960019),
                                onPrimary: Colors.white,
                                onSurface: Colors.black,
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  primary: Color(0xff960019),
                                )
                              )
                            ),
                            child: child!,);
                  }
                  );
                  if(pickeddate != null){
                    print(pickeddate);
                    var __date = DateTime.parse(pickeddate.toString());
                    String formattedDate = '${__date.day}-${__date.month}-${__date.year}';
                    print(formattedDate);
                    setState(() {
                      _date.text = formattedDate;
                      date = _date.text;
                    });
                  }else{
                    print('Date not Selected');
                  }
                },
              ),
            ),
            FutureBuilder<List<BookingsListByDateDatum>>(
                future: _dioClient.bookingListByDate(bookingbydate: BookingBydateReq(Date: date!)),
                builder: (context,snapshot){
                  if(!snapshot.hasData){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }else{
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/2,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context,index){
                                  if(!snapshot.data!.isNotEmpty){
                                  return Container();
                                }else {
                                 return StatefulBuilder(builder:
                                 ( BuildContext context,StateSetter setState){
                                   return Container(
                                     width: MediaQuery.of(context).size.width,
                                     child: Column(
                                       children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                            height: MediaQuery.of(context).size.width/2,
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: snapshot.data!.length,
                                              itemBuilder: (context,index){
                                                if(!snapshot.data!.isNotEmpty){
                                                  return Container();
                                                }else{
                                                  return Container(
                                                    margin: EdgeInsets.only(top: 10),
                                                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                                    child: Center(
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 35,
                                                                child: Padding(padding: EdgeInsets.all(2.0),
                                                                child: Center(
                                                                  child: Text(snapshot.data![index].bookingId.toString(),
                                                                      style: TextStyle(color: Colors.black45, fontSize: 10),
                                                                  ),
                                                                ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 80,
                                                                height: 35,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(2.0),
                                                                  child: Center(
                                                                    child: Text(
                                                                      snapshot.data![index].docterName,
                                                                      style: TextStyle(color: Colors.black45, fontSize: 10),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 120,
                                                                height: 35,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(2.0),
                                                                  child: Center(
                                                                    child: Text(
                                                                      snapshot.data![index].bookingDate!,
                                                                      style: TextStyle(color: Colors.black45, fontSize: 10),
                                                                      textAlign: TextAlign.center,
                                                                    ),
                                                                  ),
                                                                ),),
                                                              Container(
                                                                width: 35,
                                                                height: 35,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(2.0),
                                                                  child: Center(
                                                                    child: GestureDetector(
                                                                      child: Image.asset('asset/delete.png'),
                                                                      onTap: () async {
                                                                        return showDialog<void>(
                                                                          context: context,
                                                                          barrierDismissible: false, // user must tap button!
                                                                          builder: (BuildContext context) {
                                                                            return AlertDialog(
                                                                              title: const Text('Delete'),
                                                                              content: SingleChildScrollView(
                                                                                child: ListBody(
                                                                                  children: const <Widget>[
                                                                                    Text('Would you like to Delete this Volunteer Category?'),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              actions: <Widget>[
                                                                                TextButton(
                                                                                  child: const Text('Cancel'),
                                                                                  onPressed: () {
                                                                                    Navigator.of(context).pop();
                                                                                  },
                                                                                ),
                                                                                TextButton(
                                                                                  child: const Text('Delete',style: TextStyle(color: Colors.red),),
                                                                                  onPressed: () {
                                                                                    Navigator.of(context).pop();
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey[100],
                                                          borderRadius: BorderRadius.circular(5))
                                                  );
                                                }
                                              },
                                            ),
                                          )
                                       ],
                                     ),
                                   );
                                 });
                                  }
                                }),
                          )
                        ],
                      ),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
