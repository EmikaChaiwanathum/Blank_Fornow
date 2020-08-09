import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReportType extends StatefulWidget {
  @override
  _ReportTypeState createState() => _ReportTypeState();
}

class _ReportTypeState extends State<ReportType> {
  String dateTimeString;

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    findDateTime();
  }

  void findDateTime() {
    DateTime dateTime = DateTime.now();
    dateTimeString = DateFormat('dd-MM-yyyy').format(dateTime);
    print('dateTimeString = $dateTimeString');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MySystem().iScreenBGcolor,
      appBar: AppBar(
        backgroundColor: MySystem().iAppBarBGcolor,
        title: Column(
          children: [
            Text('ประเภทสินค้า'),
            Text(
              dateTimeString,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
