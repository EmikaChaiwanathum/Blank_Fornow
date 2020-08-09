import 'package:blank_fornow/page_2reportsale/page_reportsale_report.dart';
import 'package:blank_fornow/uqs/mysystem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageSale extends StatefulWidget {
  @override
  _PageSaleState createState() => _PageSaleState();
}

class _PageSaleState extends State<PageSale> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MySystem().iScreenBGcolor,
      appBar: AppBar(
        backgroundColor: MySystem().iAppBarBGcolor,
        title: Column(
          children: [
            Text('สรุปยอดขายสินค้า'),
            Text(
              dateTimeString,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: iList(),
      ),
    );
  }

  Card iShowTotal() => Card(
        color: Colors.blue,
      );

  Widget iList() {
    return Container(
      child: ListView.builder(
          itemCount: id == null ? 0 : id.length,
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              //You need to make my child interactive
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReportReport(),
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
          }),
    );
  }
}
