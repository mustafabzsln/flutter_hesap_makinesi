import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test1/comopanent/camping_page.dart';
import 'package:flutter_test1/comopanent/family_page.dart';
import 'package:flutter_test1/comopanent/game_page.dart';
import 'package:flutter_test1/comopanent/groceries_page.dart';
import 'package:flutter_test1/comopanent/reminder_page.dart';
import 'package:flutter_test1/comopanent/sport_page.dart';
import 'package:flutter_test1/comopanent/work_page.dart';

//import 'main.dart';

class EkraninAltKisimi extends StatefulWidget {
  EkraninAltKisimi({Key key}) : super(key: key);

  @override
  _EkraninAltKisimiState createState() => _EkraninAltKisimiState();
}

class _EkraninAltKisimiState extends State<EkraninAltKisimi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => reminderPage(),
                ),
              );
            },
            leading: Icon(
              Icons.access_alarm,
              color: Colors.blue,
            ),
            title: Text("Reminder"),
            trailing: Icon(Icons.arrow_right, color: Colors.black)),
        ListTile(
            leading: Icon(
              Icons.shopping_bag,
              color: Colors.pink,
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => groceriesPage(),
                ),
              );
            },
            title: Text("Groceries"),
            trailing: Icon(Icons.arrow_right, color: Colors.black)),
        ListTile(
            leading: Icon(
              Icons.campaign,
              color: Colors.orange,
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => campingPage(),
                ),
              );
            },
            title: Text("Camping"),
            trailing: Icon(Icons.arrow_right, color: Colors.black)),
        ListTile(
            leading: Icon(
              Icons.work,
              color: Colors.green[900],
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => workPage(),
                ),
              );
            },
            title: Text("Work"),
            trailing: Icon(Icons.arrow_right, color: Colors.black)),
        ListTile(
            leading: Icon(
              Icons.family_restroom,
              color: Colors.purple[600],
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => familyPage(),
                ),
              );
            },
            title: Text("Family"),
            trailing: Icon(Icons.arrow_right, color: Colors.black)),
        ListTile(
            leading: Icon(
              Icons.sports_esports,
              color: Colors.green,
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => gamePage(),
                ),
              );
            },
            title: Text("Game"),
            trailing: Icon(Icons.arrow_right, color: Colors.black)),
        ListTile(
            leading: Icon(
              Icons.sports,
              color: Colors.grey[900],
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => sportPage(),
                ),
              );
            },
            title: Text("Sport"),
            trailing: Icon(Icons.arrow_right, color: Colors.black)),
      ],
    );
  }
}

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
