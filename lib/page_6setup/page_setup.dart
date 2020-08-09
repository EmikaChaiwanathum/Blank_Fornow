import 'package:blank_fornow/menu.dart';
import 'package:blank_fornow/page_6setup/page_setup_about.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageSetup extends StatefulWidget {
  @override
  _PageSetupState createState() => _PageSetupState();
}

class _PageSetupState extends State<PageSetup> {
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
      appBar: iAppBar(),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                iLogo(),
              ],
            ),
          ),
          Column(
            children: [
              iShopName(),
              iServerIP(),
              iServerPort(),
              iUsername(),
              iPassword(),
              iSaveButton(),
            ],
          )
        ],
      ),
    );
  }

  Text iPassword() => Text('Password : ');

  Text iUsername() => Text('Username : ');

  Text iServerPort() => Text('Server Port : ');

  Text iServerIP() => Text('Server IP : ');

  Text iShopName() => Text('ชื่อร้าน : ');

  Container iLogo() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Image.asset(
        'images/login_logo.jpg',
        width: 200,
        //color: MySystem().iAppBarTextcolor,
      ),
    );
  }

  AppBar iAppBar() {
    return AppBar(
      backgroundColor: MySystem().iAppBarBGcolor,
      actions: <Widget>[
        InkWell(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'About',
              style: TextStyle(fontSize: 15, color: Colors.yellow),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageAbout(),
              ),
            );
            print('Text');
          },
        )
      ],
      title: iAppbarText(),
    );
  }

  Column iAppbarText() {
    return Column(
      children: [
        Text('Setup'),
        Text(
          dateTimeString,
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }

  Widget iSaveButton() => Container(
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
