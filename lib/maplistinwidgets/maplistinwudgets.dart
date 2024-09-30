import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MapListWidgegts extends StatefulWidget {
  const MapListWidgegts({super.key});

  @override
  State<MapListWidgegts> createState() => _MapListWidgegtsState();
}

class _MapListWidgegtsState extends State<MapListWidgegts> {

  List<String> names = [
    "John", "Emma", "Michael", "Sophia", "James", "Olivia", "William", "Ava",
    "Liam", "Mia", "Noah", "Isabella", "Lucas", "Charlotte", "Ethan", "Amelia",
    "Mason", "Harper", "Logan", "Evelyn", "Alexander", "Abigail", "Elijah",
    "Emily", "Benjamin", "Ella", "Daniel", "Scarlett", "Henry", "Grace",
    "Jackson", "Chloe", "Sebastian", "Lily", "Aiden", "Sofia", "Matthew",
    "Avery", "David", "Aria", "Joseph", "Ellie", "Samuel", "Zoey", "Andrew",
    "Lillian", "Christopher", "Layla", "Joshua", "Hannah", "Dylan", "Zoe"
  ];
  List<Map<String, String>> namesMap = [
  {"id": "1", "name": "John"},
{"id": "2", "name": "Emma"},
{"id": "3", "name": "Michael"},
{"id": "4", "name": "Sophia"},
{"id": "5", "name": "James"},
{"id": "6", "name": "Olivia"},
{"id": "7", "name": "William"},
{"id": "8", "name": "Ava"},
{"id": "9", "name": "Liam"},
{"id": "10", "name": "Mia"},
{"id": "11", "name": "Noah"},
{"id": "12", "name": "Isabella"},
{"id": "13", "name": "Lucas"},
{"id": "14", "name": "Charlotte"},
{"id": "15", "name": "Ethan"},
];
  List data=[
    {"id": "1", "name": "John"},
    {"id": "2", "name": "Emma"},
    {"id": "3", "name": "Michael"},
    {"id": "4", "name": "Sophia"},
    {"id": "5", "name": "James"},

  ];


@override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title:Text( "App",),
    ),
      ///get data from list in the from of String
      body: ListView(
        children: names.map((name){
          return Text(name.toString());

         }).toList(),
        )
    ///get data from list in the from of map or objects
    // body: ListView(
    // children: namesMap.map((name) {
    // return ListTile(
    // title: Text(name['name'].toString()),
    //   subtitle:Text(name['id'].toString()),
    // );
    // }).toList(),
    // ),

    );
  }
}

class Models{
  String priority;
  Models({required this.priority});
}