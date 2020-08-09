import 'package:blank_fornow/menu.dart';
import 'package:blank_fornow/page_3type/page_type_report.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageStuff extends StatefulWidget {
  @override
  _PageStuffState createState() => _PageStuffState();
}

class _PageStuffState extends State<PageStuff> {
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
      appBar:
          MySystem().iAppBar1('รายละเอียดสินค้า', dateTimeString), //iAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///Test Class TextFied ========================
              // MySystem().iTextField('aaaaaaaaaaaaaaaaa'),
              // MySystem().iTextField('bbbbbbbbb'),
              // MySystem().iTextField('cccccccccccccccc'),
              // MySystem().iTextField('dddddddddddddd'),
              // MySystem().iTextField('aaeeeee'),
              // MySystem().iTextField('ffff'),
// ================================================================

              iProductPicture(), //รูปสินค้า
              buildTypeProduct(), //ประเภทสินค้า

              iProductCode(), // รหัสสินค้า
              iProductName(), // ชื่อสินค้า
              iProductPrice(), // ราคาสินค้า

              buildSaveButton(), // Save
            ],
          ),
        ),
      ),
    );
  }

  AppBar iAppBar() {
    return AppBar(
      backgroundColor: MySystem().iAppBarBGcolor,
      title: Column(
        children: [
          Text('รายการสินค้า'),
          Text(
            dateTimeString,
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget iProductPrice() => Container(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            // Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
            labelText: 'ราคาสินค้า :',
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

  //Text iProductName() => Text('ชื่อสินค้า');
  Widget iProductName() => Container(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            // Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
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

  //Text iProductCode() => Text('รหัสสินค้า');
  Widget iProductCode() => Container(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            // Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
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

  // Text iProductPicture() => Text('รูปหมวก');
  Widget iProductPicture() => Container(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        width: 160,
        //  child: Image.asset('images/login_logo.jpg'),
        child: Image.asset('images/c1.jpg'),
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
