import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReportBill extends StatefulWidget {
  @override
  _ReportBillState createState() => _ReportBillState();
}

class _ReportBillState extends State<ReportBill> {
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
      appBar: AppBar(
        backgroundColor: MySystem().iAppBarBGcolor,
        title: Column(
          children: [
            Text('ใบเสร็จรับเงิน'),
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
