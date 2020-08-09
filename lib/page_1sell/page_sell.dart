import 'package:blank_fornow/page_1sell/page_sell_report.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageSell extends StatefulWidget {
  @override
  _PageSellState createState() => _PageSellState();
}

class _PageSellState extends State<PageSell> {
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
            Text('ขายสินค้า'),
            Text(
              dateTimeString,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildSearchName(),
              buildSearchType(),
              buildPrice(),
              buildAmount(),
              buildSaveButton(),
              const SizedBox(height: 20), // แก้ปัญหา ปุ่ม โดนเฉือนขอบล่าง
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearchName() => Container(
        margin: EdgeInsets.only(top: 0, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            suffixIcon:
                Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
            labelText: 'รหัสสินค้า :',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MySystem().iTextFieldBordercolor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: MySystem().iTextFieldFocusBordercolor),
            ),
          ),
        ),
      );
  Widget buildSearchType() => Container(
        margin: EdgeInsets.only(top: 15, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            //Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
            labelText: 'ชื่อสินค้า :',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MySystem().iTextFieldBordercolor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: MySystem().iTextFieldFocusBordercolor),
            ),
          ),
        ),
      );

  Widget buildPrice() => Container(
        margin: EdgeInsets.only(top: 15, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            //Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
            labelText: 'ราคา :',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MySystem().iTextFieldBordercolor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: MySystem().iTextFieldFocusBordercolor),
            ),
          ),
        ),
      );

  Widget buildAmount() => Container(
        margin: EdgeInsets.fromLTRB(0, 15, 100, 5),
        width: 250,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            //Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
            labelText: 'จำนวน :',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MySystem().iTextFieldBordercolor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: MySystem().iTextFieldFocusBordercolor),
            ),
          ),
        ),
      );

  Widget buildSaveButton() => Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        width: 200,
        height: 60,
        child: RaisedButton(
            // OutlineButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReportSell(),
                ),
              );
              print('Save');
            },
            child: Text(
              'Save',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            splashColor: MySystem().iSlashLoginBordercolor),
      );
}
