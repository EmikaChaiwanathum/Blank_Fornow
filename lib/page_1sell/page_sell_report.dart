import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';

class ReportSell extends StatefulWidget {
  @override
  _ReportSellState createState() => _ReportSellState();
}

class _ReportSellState extends State<ReportSell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MySystem().iScreenBGcolor,
      appBar: AppBar(
        backgroundColor: MySystem().iAppBarBGcolor,
        title: Text('ใบเสร็จรับเงิน'),
      ),
    );
  }
}
