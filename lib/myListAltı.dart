import 'package:flutter/material.dart';

import 'main.dart';

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
        MyListAltKisim(Icons.access_alarm, Colors.blue, "Reminder"),
        MyListAltKisim(Icons.shopping_bag, Colors.pink, "Groceries"),
        MyListAltKisim(Icons.campaign, Colors.orange, "Camping"),
        MyListAltKisim(Icons.work, Colors.green[900], "work"),
        MyListAltKisim(Icons.family_restroom, Colors.purple[600], "Family"),
        MyListAltKisim(Icons.sports_esports, Colors.green, "Game"),
        MyListAltKisim(Icons.sports, Colors.grey[900], "Sport"),
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
