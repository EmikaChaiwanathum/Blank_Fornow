import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class PageAbout extends StatefulWidget {
  @override
  _PageAboutState createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
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
            Text('About'),
            Text(
              dateTimeString,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            iLogo(),
            iName(),
            iText(),
            iDescription(),
            iContact(),
          ],
        ),
      ),
    );
  }

  Container iContact() {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Text('โทร : 064-089-7836'),
              Text('Line ID : @aimeeleena'),
            ],
          ),
        ),
      ),
    );
  }

  Container iDescription() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'โปรแกรมขายของเงินสดที่สะดวก รวเร็ว ใช้งานง่าย',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'สร้างขึ้นเพื่อใช้ประกอบการเรียน Flutter และ ภาษา Dart',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'ของค่าย Google ซึ่งในอนาคตเราเชื่อว่า',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'จะเป็นหนึ่งในภาษายอดนิยม',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'ที่จะพัฒนาโปรแกรมต่างๆ',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text iText() => Text(
        'โปรแกรมขายของเงินสดอาราเล่',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );

  Container iName() => Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Text(
          'Arale Cash',
          style: GoogleFonts.lobster(
            textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      );

  Widget iLogo() => Container(
        margin: EdgeInsets.only(top: 20, bottom: 0),
        child: Image.asset(
          'images/login_logo.jpg',
          width: 130,
        ),
      );
}
