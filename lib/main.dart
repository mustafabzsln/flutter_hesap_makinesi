import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test1/myListAlt%C4%B1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: Appbar(),
        body: SingleChildScrollView(
          child: Buttons(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }

  AppBar Appbar() {
    return AppBar(
      title: Text(
        "Remember",
        style: TextStyle(color: Colors.blue[600], fontSize: 20),
      ),
      backgroundColor: Color(0xFFFBFBFD),
      actions: <Widget>[
        ElevatedButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: () {},
          label: Text(
            "Edit",
            style: TextStyle(color: Colors.black),
          ),
          icon: Icon(
            Icons.edit,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Column Buttons() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(15),
          // decoration: BoxDecoration(
          //   border: Border.all(width: 1.25),
          //   borderRadius: BorderRadius.circular(15),
          // ),
          child: Container(
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black45),
              decoration: InputDecoration(
                labelText: "     Arayın",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                //labelText: "Arayın",

                labelStyle: TextStyle(fontSize: 15),
                suffixIcon: Icon(Icons.search),

                contentPadding: EdgeInsets.only(top: 0),
              ),
            ),
          ),
          //color: Color(0xFFE4E3E9),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.green, blurRadius: 3),
            ],
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFFE4E3E9),
          ),
        ),
        Row(
          children: [
            containerOlustur("Today ", Colors.cyan, Icons.calendar_today),
            containerOlustur("Scheduel", Colors.blue[600], Icons.place_rounded),
          ],
        ),
        Row(
          children: [
            containerOlustur("All", Colors.amber[900], Icons.all_inbox),
            containerOlustur("Flagged", Colors.red[900], Icons.flag),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        Text(
          'My List',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: MyList(),
          ),
        ),
      ],
    );
  }

  EkraninAltKisimi MyList() {
    return EkraninAltKisimi();
  }
}

//Arayının altındaki 4 tane sayacın olduğu kısım.
Container containerOlustur(String baslik, Color renk, IconData iconn) {
  return Container(
    constraints: BoxConstraints(
      maxHeight: 90,
      maxWidth: 160,
      minHeight: 90,
      minWidth: 160,
    ),
    //color: Colors.red,
    margin: EdgeInsets.only(left: 30, top: 15),
    decoration: BoxDecoration(
      color: Color(0xFFFFFFFF),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(20),
    ),
    //padding: EdgeInsets.only(left: 10, top: 61, bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5, left: 10),
          child: Icon(
            iconn,
            color: renk,
          ),
        ),
        FittedBox(
          child: Padding(
            padding: EdgeInsets.only(bottom: 5, left: 10, top: 15),
            child: Text(
              baslik,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
ListTile MyListAltKisim<List>(
  IconData iconnn,
  Color renk,
  String baslik,
) {
  return ListTile(
    leading: Icon(
      iconnn,
      color: renk,
    ),
    title: Text(baslik),
    trailing: ElevatedButton(
      onPressed: () {},
      child: Icon(Icons.arrow_right, color: Colors.black),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
  );
}
