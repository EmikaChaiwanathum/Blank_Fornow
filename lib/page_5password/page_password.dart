import 'package:blank_fornow/login.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PagePassword extends StatefulWidget {
  @override
  _PagePasswordState createState() => _PagePasswordState();
}

class _PagePasswordState extends State<PagePassword> {
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
            Text('Password'),
            Text(
              dateTimeString,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          //คำสั่งเอาป้ายเตือนเหลืองดำออก -_-  ◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: buildEnterName(),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      buildEnterUsername(),
                      buildEnterOldPassword(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      buildEnterNewPassword(),
                      buildConfirmNewPassword(),
                    ],
                  ),
                ),
                buildSaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEnterName() => Container(
        width: 300,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            suffixIcon: Icon(Icons.phone_android,
                color: MySystem().iTextFieldIconcolor),
            labelText: 'ชื่อ :',
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

  Widget buildEnterUsername() => Container(
        width: 300,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            suffixIcon: Icon(Icons.phone_android,
                color: MySystem().iTextFieldIconcolor),
            labelText: 'Username :',
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

  Widget buildEnterOldPassword() => Container(
        width: 300,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            suffixIcon: Icon(
              Icons.lock,
              color: MySystem().iTextFieldIconcolor,
            ),
            labelText: 'Old Password :',
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

  Widget buildEnterNewPassword() => Container(
        width: 300,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            suffixIcon: Icon(
              Icons.lock,
              color: MySystem().iTextFieldIconcolor,
            ),
            labelText: 'New Password :',
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
  Widget buildConfirmNewPassword() => Container(
        width: 300,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Colors.yellowAccent,
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            suffixIcon: Icon(
              Icons.lock,
              color: MySystem().iTextFieldIconcolor,
            ),
            labelText: 'Confirm Password :',
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
                  builder: (context) => Login(),
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
