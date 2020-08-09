import 'package:blank_fornow/menu.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MySystem().iLoginScreenBGcolor,
      body: Center(
        child: SingleChildScrollView(
          //อนุญาตให้ขยับหน้าจอให้แป้นพิมพ์
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildLogo(),
              buildText(),
              buildEnterName(),
              buildEnterPassword(),
              buildOutlineButton(),
              //buildWelcome(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOutlineButton() => Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        width: 150,
        height: 55,
        child: OutlineButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Menu(),
                  ),
                  (route) => false);
              print('Pressed Login');
            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            splashColor: MySystem().iSlashLoginBordercolor),
      );

  Text buildWelcome() => Text(
        'Welcome',
        style: GoogleFonts.rochester(
          textStyle: TextStyle(
            //color: Colors.white,
            color: MySystem().iBntOutLineBorder,
            fontSize: 20,
          ),
        ),
      );

  Widget buildEnterName() => Container(
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






  Widget buildEnterPassword() => Container(
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
            labelText: 'Password :',
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

  Container buildText() => Container(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        child: Text(
          'Version 1.0',
          style: TextStyle(
              fontSize: 16,
              color: MySystem().iVersioncolor,
              fontWeight: FontWeight.w400),
        ),
      );

  Container buildLogo() => Container(
        margin: EdgeInsets.only(top: 0, bottom: 50),
        width: 180,
        child: Image.asset('images/login_logo.jpg'),
      );
}
