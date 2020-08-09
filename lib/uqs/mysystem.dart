import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MySystem {
  String iAppName = "Arale Cash";
  Color iBntOutLineBorder = Colors.red;

  // Application Themes
  // Appl Title

//# LoginPageScreen
  Color iLoginScreenBGcolor = Colors.white;
  Color iVersioncolor = Color(0xFF4a45c7);

//# PageScreen

  Color iScreenBGcolor = Color(0xFFF6F6F6);

//# Appbar
//Appbar สี Background
//Appbar สีตัวอักษร
  Color iAppBarBGcolor = Color(0xFF0e0094);
  Color iAppBarTextcolor = Colors.white;
  Color iAppBarIconcolor = Colors.white;

//# ปุ่ม Slash

  Color iSlashLoginBordercolor = Color(0xFF6b4467);

//# ปุ่ม Outline
// ปุ่ม สี Background
// ปุ่ม สี เส้น
// ปุ่ม สี เส้น Login
// ปุ่ม สี เส้น Focus
// ปุ่ม สี ตัวอักษร
// ปุ่ม สี Icon
  Color iBtnOutlineBGcolor = Colors.red;
  Color iBtnOutlineBordercolor = Color(0xFFababab);
  Color iBtnOutlineFocusBordercolor = Color(0xFF6b4467);
  Color iBtnOutlineTextcolor = Color(0xFFababab);
  Color iBtnOutlineIconcolor = Color(0xFFababab);

// # TextField
// TextField สี Background
// TetField สี เส้น
// TextField สี เส้น Focus
// TextField สี ตัวอักษร
// TextField สี Icon
  Color iTextFieldBGcolor = Colors.red;
  Color iTextFieldBordercolor = Color(0xFFb1b1b1);
  Color iTextFieldFocusBordercolor = Color(0xFF6b4467);
  Color iTextFieldTextcolor = Color(0xFFb1b1b1);
  Color iTextFieldIconcolor = Color(0xFFb1b1b1);

  // BtnOutlineBorderColor
  String dateTimeString = '01/01/1900';

// ทดลองทำ Class Appbar
  AppBar iAppBar1(String iHeader, String iDate) {
    return AppBar(
      backgroundColor: MySystem().iAppBarBGcolor,
      title: Column(
        children: [
          // Text('รายการสินค้า'),
          // Text(
          // dateTimeString,
          Text(iHeader),
          Text(
            iDate,
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget iTextField(String iLabel) => Container(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        width: 350,
        child: TextField(
          decoration: InputDecoration(
            labelStyle: TextStyle(color: MySystem().iTextFieldTextcolor),
            //suffixIcon:
            // Icon(Icons.search, color: MySystem().iTextFieldIconcolor),
            labelText: iLabel,
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

  MySystem();
}
