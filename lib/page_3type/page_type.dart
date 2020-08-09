import 'package:blank_fornow/menu.dart';
import 'package:blank_fornow/page_3type/page_type_report.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageType extends StatefulWidget {
  @override
  _PageTypeState createState() => _PageTypeState();
}

class _PageTypeState extends State<PageType> {
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
      body: Center(
        child: Column(
          children: [
            buildTypeCode(),
            buildTypeProduct(),
            buildSaveButton(),
          ],
        ),
      ),
    );
  }

  Widget buildTypeCode() => Container(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            // Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
            labelText: 'รหัสประเภทสินค้า :',
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

  Widget buildTypeProduct() => Container(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            // Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
            labelText: 'ประเภทสินค้า :',
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
          top: 20,
        ),
        width: 150,
        height: 55,
        child: OutlineButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Menu(),
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
