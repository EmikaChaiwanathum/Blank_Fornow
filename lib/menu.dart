import 'package:blank_fornow/login.dart';
import 'package:blank_fornow/page_1sell/page_sell.dart';
import 'package:blank_fornow/page_2reportsale/page_reportsale.dart';
import 'package:blank_fornow/page_3type/page_type.dart';
import 'package:blank_fornow/page_4stuff/page_stuff.dart';
import 'package:blank_fornow/page_5password/page_password.dart';
import 'package:blank_fornow/page_6setup/page_setup.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
        title: buildTitle(),
        actions: <Widget>[
          Text('User : '),
          Text('Name : '),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
              print('Exit');
            },
            tooltip: 'Exit App',
            icon: Icon(
              Icons.exit_to_app,
              color: MySystem().iAppBarIconcolor,
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50, bottom: 0),
          // ******* เหลือใส่ ยอดรวม 2 บรรทัด
          child: iMainMenu(), // สร้าง Dashboard Mainmenu
        ),
      ),
    );
  }

  Padding iMainMenu() {
    return Padding(
      // padding: const EdgeInsets.all(
      //   40.0,
      padding: const EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 0.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          iMenu1(),
          iMenu2(),
          iMenu3(),
          iMenu4(),
          iMenu5(),
          iMenu6(),
        ],
      ),
    );
  }

  // แบบ รูป Icon อยู่ใน วงกลม
  Widget iMenu1() {
    return Column(
      children: [
        Card(
          shape: CircleBorder(),
          elevation: 5.0,
          // RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            //  borderRadius: BorderRadius.circular(40.0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageSell(),
                ),
              );
              print('1');
            },
            splashColor: MySystem().iSlashLoginBordercolor,
            child: Center(
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.shopping_cart,
                  size: 60.0,
                ),
              ),
            ),
          ),
        ),
        Text(
          'ขายสินค้า',
          style: TextStyle(fontSize: 15.0),
        )
      ],
    );
  }

  Widget iMenu2() {
    return Column(
      children: [
        Card(
          shape: CircleBorder(),
          elevation: 5.0,
          // RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            // borderRadius: BorderRadius.circular(40.0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageSale(),
                ),
              );
              print('2');
            },
            splashColor: MySystem().iSlashLoginBordercolor,
            child: Center(
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.monetization_on,
                  size: 60.0,
                ),
              ),
            ),
          ),
        ),
        Text(
          'สรุปยอดขายสินค้า',
          style: TextStyle(fontSize: 15.0),
        )
      ],
    );
  }

  Widget iMenu3() {
    return Column(
      children: [
        Card(
          shape: CircleBorder(),
          elevation: 5.0,
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageType(),
                ),
              );
              print('3');
            },
            splashColor: MySystem().iSlashLoginBordercolor,
            child: Center(
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.category,
                  size: 60.0,
                ),
              ),
            ),
          ),
        ),
        Text(
          'หมวดหมู่สินค้า',
          style: TextStyle(fontSize: 15.0),
        )
      ],
    );
  }

  Widget iMenu4() {
    return Column(
      children: [
        Card(
          shape: CircleBorder(),
          elevation: 5.0,
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageStuff(),
                ),
              );
              print('4');
            },
            splashColor: MySystem().iSlashLoginBordercolor,
            child: Center(
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.event_note,
                  size: 60.0,
                ),
              ),
            ),
          ),
        ),
        Text(
          'สินค้า',
          style: TextStyle(fontSize: 15.0),
        )
      ],
    );
  }

  Widget iMenu5() {
    return Column(
      children: [
        Card(
          shape: CircleBorder(),
          elevation: 5.0,
          margin: EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PagePassword(),
                ),
              );
              print('5');
            },
            splashColor: MySystem().iSlashLoginBordercolor,
            child: Center(
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  size: 60.0,
                ),
              ),
            ),
          ),
        ),
        Text(
          'Password',
          style: TextStyle(fontSize: 15.0),
        )
      ],
    );
  }

  Widget iMenu6() {
    return Column(
      children: [
        Card(
          shape: CircleBorder(),
          elevation: 5.0,
          //     Border.symmetric(
          //   vertical: BorderSide(width: 1),
          //   horizontal: BorderSide(width: 1),
          // ),
          margin: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageSetup(),
                ),
              );
              print('6');
            },
            splashColor: MySystem().iSlashLoginBordercolor,
            child: Center(
              child: Container(
                height: 110.0,
                width: 110.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.settings,
                  size: 60.0,
                ),
              ),
            ),
          ),
        ),
        Text(
          'Setup',
          style: TextStyle(fontSize: 15.0),
        )
      ],
    );
  }
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
  /// ปุ่ม แบบวงรี/สี่เหลี่ยมมุมมน
  //  Widget iMenu6() {
  //   return Column(
  //     children: [
  //       Card(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(100),
  //         ),
  //         //     Border.symmetric(
  //         //   vertical: BorderSide(width: 1),
  //         //   horizontal: BorderSide(width: 1),
  //         // ),
  //         margin: EdgeInsets.all(10),
  //         child: InkWell(
  //           onTap: () {
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(
  //                 builder: (context) => PageSetup(),
  //               ),
  //             );
  //             print('6');
  //           },
  //           splashColor: MySystem().iSlashLoginBordercolor,
  //           child: Center(
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: <Widget>[
  //                 Icon(
  //                   Icons.settings,
  //                   size: 100.0,
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //       Text(
  //         'Setup',
  //         style: TextStyle(fontSize: 15.0),
  //       )
  //     ],
  //   );
  // }
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

  Widget buildTitle() => Column(
        children: [
          Text(
            'Arale Cash',
            style: GoogleFonts.oleoScript(
              textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Text(
            dateTimeString,
            style: TextStyle(fontSize: 13),
          )
        ],
      );
}
