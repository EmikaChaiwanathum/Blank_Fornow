import 'package:blank_fornow/page_2reportsale/page_reportsale_bill.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReportReport extends StatefulWidget {
  @override
  _ReportReportState createState() => _ReportReportState();
}

class _ReportReportState extends State<ReportReport> {
  String dateTimeString;
  var id = [
    "title 1",
    "title 2",
    "title 3",
    "title 4",
    "title 5",
    "title 5",
    "title 5",
    "title 5",
    "55555555",
    "title 1",
    "title 2",
    "title 3",
    "title 4",
    "title 5",
    "title 5",
    "title 5",
    "title 5",
    "55555555"
  ];
  var date = [
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
    "01 / 01 / 01",
  ];
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
      appBar: AppBar(
        backgroundColor: MySystem().iAppBarBGcolor,
        title: Column(
          children: [
            Text('รายละเอียดยอดขาย'),
            Text(
              dateTimeString,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
      body: iList(),
    );
  }

  ListView iList() {
    return ListView.builder(
        itemCount: id == null ? 0 : id.length,
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
            //You need to make my child interactive
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReportBill(),
                ),
              );
              print(id[index]);
            },
            child: Column(
              children: [
                new Card(
                  elevation: 5,
                  margin: EdgeInsets.only(top: 10),
                  //I am the clickable child
                  child: new Column(
                    children: <Widget>[
                      //new Image.network(video[index]),
                      new Padding(
                        padding: new EdgeInsets.all(50.0),
                      ),
                      Row(
                        children: [
                          Text(
                            date[index],
                          ),
                          new Text(
                            id[index],
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
